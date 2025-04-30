package io.netty.handler.codec.http2;

import io.netty.handler.codec.http2.Http2Connection;
import io.netty.handler.codec.http2.Http2Stream;
import io.netty.handler.codec.http2.StreamByteDistributor;
import io.netty.util.collection.IntCollections;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.internal.DefaultPriorityQueue;
import io.netty.util.internal.EmptyPriorityQueue;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PriorityQueue;
import io.netty.util.internal.PriorityQueueNode;
import io.netty.util.internal.SystemPropertyUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public final class WeightedFairQueueByteDistributor implements StreamByteDistributor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_MAX_STATE_ONLY_SIZE = 5;
    static final int INITIAL_CHILDREN_MAP_SIZE = Math.max(1, SystemPropertyUtil.getInt("io.netty.http2.childrenMapSize", 2));
    private int allocationQuantum;
    private final Http2Connection connection;
    private final State connectionState;
    private final int maxStateOnlySize;
    private final Http2Connection.a stateKey;
    private final IntObjectMap<State> stateOnlyMap;
    private final PriorityQueue<State> stateOnlyRemovalQueue;

    /* renamed from: io.netty.handler.codec.http2.WeightedFairQueueByteDistributor$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State = iArr;
            try {
                iArr[Http2Stream.State.RESERVED_REMOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class ParentChangedEvent {
        final State oldParent;
        final State state;

        ParentChangedEvent(State state, State state2) {
            this.state = state;
            this.oldParent = state2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class State implements PriorityQueueNode {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final byte STATE_IS_ACTIVE = 1;
        private static final byte STATE_IS_DISTRIBUTING = 2;
        private static final byte STATE_STREAM_ACTIVATED = 4;
        int activeCountForTree;
        IntObjectMap<State> children;
        int dependencyTreeDepth;
        private byte flags;
        State parent;
        long pseudoTime;
        private final PriorityQueue<State> pseudoTimeQueue;
        private int pseudoTimeQueueIndex;
        long pseudoTimeToWrite;
        private int stateOnlyQueueIndex;
        Http2Stream stream;
        final int streamId;
        int streamableBytes;
        long totalQueuedWeights;
        short weight;

        State(WeightedFairQueueByteDistributor weightedFairQueueByteDistributor, int i2) {
            this(i2, null, 0);
        }

        private void initChildren() {
            this.children = new IntObjectHashMap(WeightedFairQueueByteDistributor.INITIAL_CHILDREN_MAP_SIZE);
        }

        private void initChildrenIfEmpty() {
            if (this.children == IntCollections.emptyMap()) {
                initChildren();
            }
        }

        private IntObjectMap<State> removeAllChildrenExcept(State state) {
            State remove = this.children.remove(state.streamId);
            IntObjectMap<State> intObjectMap = this.children;
            initChildren();
            if (remove != null) {
                this.children.put(remove.streamId, (int) remove);
            }
            return intObjectMap;
        }

        private void setActive() {
            this.flags = (byte) (this.flags | 1);
        }

        private void setParent(State state) {
            State state2;
            if (this.activeCountForTree != 0 && (state2 = this.parent) != null) {
                state2.removePseudoTimeQueue(this);
                this.parent.activeCountChangeForTree(-this.activeCountForTree);
            }
            this.parent = state;
            this.dependencyTreeDepth = state == null ? Integer.MAX_VALUE : state.dependencyTreeDepth + 1;
        }

        private void unsetActive() {
            this.flags = (byte) (this.flags & (-2));
        }

        void activeCountChangeForTree(int i2) {
            int i4 = this.activeCountForTree + i2;
            this.activeCountForTree = i4;
            State state = this.parent;
            if (state != null) {
                if (i4 == 0) {
                    state.removePseudoTimeQueue(this);
                } else if (i4 == i2 && !isDistributing()) {
                    this.parent.offerAndInitializePseudoTime(this);
                }
                this.parent.activeCountChangeForTree(i2);
            }
        }

        void close() {
            updateStreamableBytes(0, false);
            this.stream = null;
        }

        boolean isActive() {
            return (this.flags & 1) != 0;
        }

        boolean isDescendantOf(State state) {
            for (State state2 = this.parent; state2 != null; state2 = state2.parent) {
                if (state2 == state) {
                    return true;
                }
            }
            return false;
        }

        boolean isDistributing() {
            return (this.flags & 2) != 0;
        }

        void offerAndInitializePseudoTime(State state) {
            state.pseudoTimeToWrite = this.pseudoTime;
            offerPseudoTimeQueue(state);
        }

        void offerPseudoTimeQueue(State state) {
            this.pseudoTimeQueue.offer(state);
            this.totalQueuedWeights += state.weight;
        }

        State peekPseudoTimeQueue() {
            return this.pseudoTimeQueue.peek();
        }

        State pollPseudoTimeQueue() {
            State poll = this.pseudoTimeQueue.poll();
            this.totalQueuedWeights -= poll.weight;
            return poll;
        }

        @Override // io.netty.util.internal.PriorityQueueNode
        public int priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue) {
            return defaultPriorityQueue == WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue ? this.stateOnlyQueueIndex : this.pseudoTimeQueueIndex;
        }

        void removeChild(State state) {
            if (this.children.remove(state.streamId) != null) {
                ArrayList arrayList = new ArrayList(state.children.size() + 1);
                arrayList.add(new ParentChangedEvent(state, state.parent));
                state.setParent(null);
                Iterator<IntObjectMap.PrimitiveEntry<State>> it2 = state.children.entries().iterator();
                while (it2.hasNext()) {
                    takeChild(it2, it2.next().value(), false, arrayList);
                }
                WeightedFairQueueByteDistributor.this.notifyParentChanged(arrayList);
            }
        }

        void removePseudoTimeQueue(State state) {
            if (this.pseudoTimeQueue.removeTyped(state)) {
                this.totalQueuedWeights -= state.weight;
            }
        }

        void setDistributing() {
            this.flags = (byte) (this.flags | 2);
        }

        void setStreamReservedOrActivated() {
            this.flags = (byte) (this.flags | 4);
        }

        void takeChild(State state, boolean z3, List<ParentChangedEvent> list) {
            takeChild(null, state, z3, list);
        }

        public String toString() {
            int i2 = this.activeCountForTree;
            if (i2 <= 0) {
                i2 = 1;
            }
            StringBuilder sb = new StringBuilder(i2 * 256);
            toString(sb);
            return sb.toString();
        }

        void unsetDistributing() {
            this.flags = (byte) (this.flags & (-3));
        }

        void updatePseudoTime(State state, int i2, long j4) {
            this.pseudoTimeToWrite = Math.min(this.pseudoTimeToWrite, state.pseudoTime) + ((i2 * j4) / this.weight);
        }

        void updateStreamableBytes(int i2, boolean z3) {
            if (isActive() != z3) {
                if (z3) {
                    activeCountChangeForTree(1);
                    setActive();
                } else {
                    activeCountChangeForTree(-1);
                    unsetActive();
                }
            }
            this.streamableBytes = i2;
        }

        boolean wasStreamReservedOrActivated() {
            return (this.flags & 4) != 0;
        }

        void write(int i2, StreamByteDistributor.Writer writer) throws Http2Exception {
            try {
                writer.write(this.stream, i2);
            } catch (Throwable th) {
                throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th, "byte distribution write error", new Object[0]);
            }
        }

        State(WeightedFairQueueByteDistributor weightedFairQueueByteDistributor, Http2Stream http2Stream) {
            this(weightedFairQueueByteDistributor, http2Stream, 0);
        }

        @Override // io.netty.util.internal.PriorityQueueNode
        public void priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue, int i2) {
            if (defaultPriorityQueue == WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue) {
                this.stateOnlyQueueIndex = i2;
            } else {
                this.pseudoTimeQueueIndex = i2;
            }
        }

        void takeChild(Iterator<IntObjectMap.PrimitiveEntry<State>> it2, State state, boolean z3, List<ParentChangedEvent> list) {
            State state2 = state.parent;
            if (state2 != this) {
                list.add(new ParentChangedEvent(state, state2));
                state.setParent(this);
                if (it2 != null) {
                    it2.remove();
                } else if (state2 != null) {
                    state2.children.remove(state.streamId);
                }
                initChildrenIfEmpty();
                this.children.put(state.streamId, (int) state);
            }
            if (!z3 || this.children.isEmpty()) {
                return;
            }
            Iterator<IntObjectMap.PrimitiveEntry<State>> it3 = removeAllChildrenExcept(state).entries().iterator();
            while (it3.hasNext()) {
                state.takeChild(it3, it3.next().value(), false, list);
            }
        }

        State(WeightedFairQueueByteDistributor weightedFairQueueByteDistributor, Http2Stream http2Stream, int i2) {
            this(http2Stream.id(), http2Stream, i2);
        }

        State(int i2, Http2Stream http2Stream, int i4) {
            this.children = IntCollections.emptyMap();
            this.pseudoTimeQueueIndex = -1;
            this.stateOnlyQueueIndex = -1;
            this.weight = (short) 16;
            this.stream = http2Stream;
            this.streamId = i2;
            this.pseudoTimeQueue = new DefaultPriorityQueue(StatePseudoTimeComparator.INSTANCE, i4);
        }

        private void toString(StringBuilder sb) {
            sb.append("{streamId ");
            sb.append(this.streamId);
            sb.append(" streamableBytes ");
            sb.append(this.streamableBytes);
            sb.append(" activeCountForTree ");
            sb.append(this.activeCountForTree);
            sb.append(" pseudoTimeQueueIndex ");
            sb.append(this.pseudoTimeQueueIndex);
            sb.append(" pseudoTimeToWrite ");
            sb.append(this.pseudoTimeToWrite);
            sb.append(" pseudoTime ");
            sb.append(this.pseudoTime);
            sb.append(" flags ");
            sb.append((int) this.flags);
            sb.append(" pseudoTimeQueue.size() ");
            sb.append(this.pseudoTimeQueue.size());
            sb.append(" stateOnlyQueueIndex ");
            sb.append(this.stateOnlyQueueIndex);
            sb.append(" parent.streamId ");
            State state = this.parent;
            sb.append(state == null ? -1 : state.streamId);
            sb.append("} [");
            if (!this.pseudoTimeQueue.isEmpty()) {
                for (State state2 : this.pseudoTimeQueue) {
                    state2.toString(sb);
                    sb.append(", ");
                }
                sb.setLength(sb.length() - 2);
            }
            sb.append(']');
        }
    }

    /* loaded from: classes5.dex */
    private static final class StateOnlyComparator implements Comparator<State>, Serializable {
        static final StateOnlyComparator INSTANCE = new StateOnlyComparator();
        private static final long serialVersionUID = -4806936913002105966L;

        private StateOnlyComparator() {
        }

        @Override // java.util.Comparator
        public int compare(State state, State state2) {
            boolean wasStreamReservedOrActivated = state.wasStreamReservedOrActivated();
            if (wasStreamReservedOrActivated != state2.wasStreamReservedOrActivated()) {
                return wasStreamReservedOrActivated ? -1 : 1;
            }
            int i2 = state2.dependencyTreeDepth - state.dependencyTreeDepth;
            return i2 != 0 ? i2 : state.streamId - state2.streamId;
        }
    }

    /* loaded from: classes5.dex */
    private static final class StatePseudoTimeComparator implements Comparator<State>, Serializable {
        static final StatePseudoTimeComparator INSTANCE = new StatePseudoTimeComparator();
        private static final long serialVersionUID = -1437548640227161828L;

        private StatePseudoTimeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(State state, State state2) {
            return MathUtil.compare(state.pseudoTimeToWrite, state2.pseudoTimeToWrite);
        }
    }

    public WeightedFairQueueByteDistributor(Http2Connection http2Connection) {
        this(http2Connection, 5);
    }

    private int distributeToChildren(int i2, StreamByteDistributor.Writer writer, State state) throws Http2Exception {
        long j4 = state.totalQueuedWeights;
        State pollPseudoTimeQueue = state.pollPseudoTimeQueue();
        State peekPseudoTimeQueue = state.peekPseudoTimeQueue();
        pollPseudoTimeQueue.setDistributing();
        if (peekPseudoTimeQueue != null) {
            try {
                i2 = Math.min(i2, (int) Math.min((((peekPseudoTimeQueue.pseudoTimeToWrite - pollPseudoTimeQueue.pseudoTimeToWrite) * pollPseudoTimeQueue.weight) / j4) + this.allocationQuantum, 2147483647L));
            } finally {
                pollPseudoTimeQueue.unsetDistributing();
                if (pollPseudoTimeQueue.activeCountForTree != 0) {
                    state.offerPseudoTimeQueue(pollPseudoTimeQueue);
                }
            }
        }
        int distribute = distribute(i2, writer, pollPseudoTimeQueue);
        state.pseudoTime += distribute;
        pollPseudoTimeQueue.updatePseudoTime(state, distribute, j4);
        return distribute;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public State state(Http2Stream http2Stream) {
        return (State) http2Stream.getProperty(this.stateKey);
    }

    public void allocationQuantum(int i2) {
        ObjectUtil.checkPositive(i2, "allocationQuantum");
        this.allocationQuantum = i2;
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public boolean distribute(int i2, StreamByteDistributor.Writer writer) throws Http2Exception {
        int i4;
        if (this.connectionState.activeCountForTree == 0) {
            return false;
        }
        while (true) {
            State state = this.connectionState;
            int i5 = state.activeCountForTree;
            i2 -= distributeToChildren(i2, writer, state);
            i4 = this.connectionState.activeCountForTree;
            if (i4 == 0 || (i2 <= 0 && i5 == i4)) {
                break;
            }
        }
        return i4 != 0;
    }

    boolean isChild(int i2, int i4, short s3) {
        State state = state(i4);
        if (state.children.containsKey(i2)) {
            State state2 = state(i2);
            if (state2.parent == state && state2.weight == s3) {
                return true;
            }
        }
        return false;
    }

    void notifyParentChanged(List<ParentChangedEvent> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            ParentChangedEvent parentChangedEvent = list.get(i2);
            this.stateOnlyRemovalQueue.priorityChanged(parentChangedEvent.state);
            State state = parentChangedEvent.state;
            State state2 = state.parent;
            if (state2 != null && state.activeCountForTree != 0) {
                state2.offerAndInitializePseudoTime(state);
                State state3 = parentChangedEvent.state;
                state3.parent.activeCountChangeForTree(state3.activeCountForTree);
            }
        }
    }

    int numChildren(int i2) {
        State state = state(i2);
        if (state == null) {
            return 0;
        }
        return state.children.size();
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public void updateDependencyTree(int i2, int i4, short s3, boolean z3) {
        ArrayList arrayList;
        State state;
        State state2 = state(i2);
        if (state2 == null) {
            if (this.maxStateOnlySize == 0) {
                return;
            }
            state2 = new State(this, i2);
            this.stateOnlyRemovalQueue.add(state2);
            this.stateOnlyMap.put(i2, (int) state2);
        }
        State state3 = state(i4);
        if (state3 == null) {
            if (this.maxStateOnlySize == 0) {
                return;
            }
            state3 = new State(this, i4);
            this.stateOnlyRemovalQueue.add(state3);
            this.stateOnlyMap.put(i4, (int) state3);
            ArrayList arrayList2 = new ArrayList(1);
            this.connectionState.takeChild(state3, false, arrayList2);
            notifyParentChanged(arrayList2);
        }
        if (state2.activeCountForTree != 0 && (state = state2.parent) != null) {
            state.totalQueuedWeights += s3 - state2.weight;
        }
        state2.weight = s3;
        if (state3 != state2.parent || (z3 && state3.children.size() != 1)) {
            if (state3.isDescendantOf(state2)) {
                arrayList = new ArrayList((z3 ? state3.children.size() : 0) + 2);
                state2.parent.takeChild(state3, false, arrayList);
            } else {
                arrayList = new ArrayList((z3 ? state3.children.size() : 0) + 1);
            }
            state3.takeChild(state2, z3, arrayList);
            notifyParentChanged(arrayList);
        }
        while (this.stateOnlyRemovalQueue.size() > this.maxStateOnlySize) {
            State poll = this.stateOnlyRemovalQueue.poll();
            poll.parent.removeChild(poll);
            this.stateOnlyMap.remove(poll.streamId);
        }
    }

    @Override // io.netty.handler.codec.http2.StreamByteDistributor
    public void updateStreamableBytes(StreamByteDistributor.StreamState streamState) {
        state(streamState.stream()).updateStreamableBytes(Http2CodecUtil.streamableBytes(streamState), streamState.hasFrame() && streamState.windowSize() >= 0);
    }

    public WeightedFairQueueByteDistributor(Http2Connection http2Connection, int i2) {
        this.allocationQuantum = 1024;
        ObjectUtil.checkPositiveOrZero(i2, "maxStateOnlySize");
        if (i2 == 0) {
            this.stateOnlyMap = IntCollections.emptyMap();
            this.stateOnlyRemovalQueue = EmptyPriorityQueue.instance();
        } else {
            this.stateOnlyMap = new IntObjectHashMap(i2);
            this.stateOnlyRemovalQueue = new DefaultPriorityQueue(StateOnlyComparator.INSTANCE, i2 + 2);
        }
        this.maxStateOnlySize = i2;
        this.connection = http2Connection;
        Http2Connection.a newKey = http2Connection.newKey();
        this.stateKey = newKey;
        Http2Stream connectionStream = http2Connection.connectionStream();
        State state = new State(this, connectionStream, 16);
        this.connectionState = state;
        connectionStream.setProperty(newKey, state);
        http2Connection.addListener(new Http2ConnectionAdapter() { // from class: io.netty.handler.codec.http2.WeightedFairQueueByteDistributor.1
            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamActive(Http2Stream http2Stream) {
                WeightedFairQueueByteDistributor.this.state(http2Stream).setStreamReservedOrActivated();
            }

            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamAdded(Http2Stream http2Stream) {
                State state2 = (State) WeightedFairQueueByteDistributor.this.stateOnlyMap.remove(http2Stream.id());
                if (state2 != null) {
                    WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue.removeTyped(state2);
                    state2.stream = http2Stream;
                } else {
                    state2 = new State(WeightedFairQueueByteDistributor.this, http2Stream);
                    ArrayList arrayList = new ArrayList(1);
                    WeightedFairQueueByteDistributor.this.connectionState.takeChild(state2, false, arrayList);
                    WeightedFairQueueByteDistributor.this.notifyParentChanged(arrayList);
                }
                int i4 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[http2Stream.state().ordinal()];
                if (i4 == 1 || i4 == 2) {
                    state2.setStreamReservedOrActivated();
                }
                http2Stream.setProperty(WeightedFairQueueByteDistributor.this.stateKey, state2);
            }

            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamClosed(Http2Stream http2Stream) {
                WeightedFairQueueByteDistributor.this.state(http2Stream).close();
            }

            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamRemoved(Http2Stream http2Stream) {
                State state2 = WeightedFairQueueByteDistributor.this.state(http2Stream);
                state2.stream = null;
                if (WeightedFairQueueByteDistributor.this.maxStateOnlySize != 0) {
                    if (WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue.size() == WeightedFairQueueByteDistributor.this.maxStateOnlySize) {
                        State state3 = (State) WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue.peek();
                        if (StateOnlyComparator.INSTANCE.compare(state3, state2) < 0) {
                            WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue.poll();
                            state3.parent.removeChild(state3);
                            WeightedFairQueueByteDistributor.this.stateOnlyMap.remove(state3.streamId);
                        } else {
                            state2.parent.removeChild(state2);
                            return;
                        }
                    }
                    WeightedFairQueueByteDistributor.this.stateOnlyRemovalQueue.add(state2);
                    WeightedFairQueueByteDistributor.this.stateOnlyMap.put(state2.streamId, (int) state2);
                    return;
                }
                state2.parent.removeChild(state2);
            }
        });
    }

    private State state(int i2) {
        Http2Stream stream = this.connection.stream(i2);
        return stream != null ? state(stream) : this.stateOnlyMap.get(i2);
    }

    private int distribute(int i2, StreamByteDistributor.Writer writer, State state) throws Http2Exception {
        if (state.isActive()) {
            int min = Math.min(i2, state.streamableBytes);
            state.write(min, writer);
            if (min == 0 && i2 != 0) {
                state.updateStreamableBytes(state.streamableBytes, false);
            }
            return min;
        }
        return distributeToChildren(i2, writer, state);
    }
}
