package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http2.Http2Connection;
import io.netty.handler.codec.http2.Http2Stream;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.Promise;
import io.netty.util.concurrent.UnaryPromiseNotifier;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes5.dex */
public class DefaultHttp2Connection implements Http2Connection {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultHttp2Connection.class);
    final ActiveStreams activeStreams;
    Promise<Void> closePromise;
    final ConnectionStream connectionStream;
    final List<Http2Connection.Listener> listeners;
    final DefaultEndpoint<Http2LocalFlowController> localEndpoint;
    final PropertyKeyRegistry propertyKeyRegistry;
    final DefaultEndpoint<Http2RemoteFlowController> remoteEndpoint;
    final IntObjectMap<Http2Stream> streamMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.http2.DefaultHttp2Connection$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State = iArr;
            try {
                iArr[Http2Stream.State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.RESERVED_REMOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.OPEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.HALF_CLOSED_LOCAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class ActiveStreams {
        private final List<Http2Connection.Listener> listeners;
        private int pendingIterations;
        private final Queue<Event> pendingEvents = new ArrayDeque(4);
        private final Set<Http2Stream> streams = new LinkedHashSet();

        ActiveStreams(List<Http2Connection.Listener> list) {
            this.listeners = list;
        }

        public void activate(final DefaultStream defaultStream) {
            if (allowModifications()) {
                addToActiveStreams(defaultStream);
            } else {
                this.pendingEvents.add(new Event() { // from class: io.netty.handler.codec.http2.DefaultHttp2Connection.ActiveStreams.1
                    @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.Event
                    public void process() {
                        ActiveStreams.this.addToActiveStreams(defaultStream);
                    }
                });
            }
        }

        void addToActiveStreams(DefaultStream defaultStream) {
            if (this.streams.add(defaultStream)) {
                defaultStream.createdBy().numActiveStreams++;
                for (int i2 = 0; i2 < this.listeners.size(); i2++) {
                    try {
                        this.listeners.get(i2).onStreamActive(defaultStream);
                    } catch (Throwable th) {
                        DefaultHttp2Connection.logger.error("Caught Throwable from listener onStreamActive.", th);
                    }
                }
            }
        }

        boolean allowModifications() {
            return this.pendingIterations == 0;
        }

        public void deactivate(final DefaultStream defaultStream, final Iterator<?> it2) {
            if (!allowModifications() && it2 == null) {
                this.pendingEvents.add(new Event() { // from class: io.netty.handler.codec.http2.DefaultHttp2Connection.ActiveStreams.2
                    @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.Event
                    public void process() {
                        ActiveStreams.this.removeFromActiveStreams(defaultStream, it2);
                    }
                });
            } else {
                removeFromActiveStreams(defaultStream, it2);
            }
        }

        void decrementPendingIterations() {
            this.pendingIterations--;
            if (!allowModifications()) {
                return;
            }
            while (true) {
                Event poll = this.pendingEvents.poll();
                if (poll == null) {
                    return;
                }
                try {
                    poll.process();
                } catch (Throwable th) {
                    DefaultHttp2Connection.logger.error("Caught Throwable while processing pending ActiveStreams$Event.", th);
                }
            }
        }

        public Http2Stream forEachActiveStream(Http2StreamVisitor http2StreamVisitor) throws Http2Exception {
            incrementPendingIterations();
            try {
                for (Http2Stream http2Stream : this.streams) {
                    if (!http2StreamVisitor.visit(http2Stream)) {
                        return http2Stream;
                    }
                }
                return null;
            } finally {
                decrementPendingIterations();
            }
        }

        void incrementPendingIterations() {
            this.pendingIterations++;
        }

        void removeFromActiveStreams(DefaultStream defaultStream, Iterator<?> it2) {
            if (this.streams.remove(defaultStream)) {
                DefaultEndpoint<? extends Http2FlowController> createdBy = defaultStream.createdBy();
                createdBy.numActiveStreams--;
                DefaultHttp2Connection.this.notifyClosed(defaultStream);
            }
            DefaultHttp2Connection.this.removeStream(defaultStream, it2);
        }

        public int size() {
            return this.streams.size();
        }
    }

    /* loaded from: classes5.dex */
    private final class ConnectionStream extends DefaultStream {
        ConnectionStream() {
            super(0, Http2Stream.State.IDLE);
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream close() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream closeLocalSide() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream closeRemoteSide() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream
        DefaultEndpoint<? extends Http2FlowController> createdBy() {
            return null;
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream headersSent(boolean z3) {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public boolean isHeadersSent() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public boolean isPushPromiseSent() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public boolean isResetSent() {
            return false;
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream open(boolean z3) {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream pushPromiseSent() {
            throw new UnsupportedOperationException();
        }

        @Override // io.netty.handler.codec.http2.DefaultHttp2Connection.DefaultStream, io.netty.handler.codec.http2.Http2Stream
        public Http2Stream resetSent() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class DefaultEndpoint<F extends Http2FlowController> implements Http2Connection.Endpoint<F> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private F flowController;
        private int lastStreamKnownByPeer = -1;
        private int maxActiveStreams;
        private final int maxReservedStreams;
        private int maxStreams;
        private int nextReservationStreamId;
        private int nextStreamIdToCreate;
        int numActiveStreams;
        int numStreams;
        private boolean pushToAllowed;
        private final boolean server;

        DefaultEndpoint(boolean z3, int i2) {
            this.pushToAllowed = true;
            this.server = z3;
            if (z3) {
                this.nextStreamIdToCreate = 2;
                this.nextReservationStreamId = 0;
            } else {
                this.nextStreamIdToCreate = 1;
                this.nextReservationStreamId = 1;
            }
            this.pushToAllowed = true ^ z3;
            this.maxActiveStreams = Integer.MAX_VALUE;
            this.maxReservedStreams = ObjectUtil.checkPositiveOrZero(i2, "maxReservedStreams");
            updateMaxStreams();
        }

        private void addStream(DefaultStream defaultStream) {
            DefaultHttp2Connection.this.streamMap.put(defaultStream.id(), (int) defaultStream);
            for (int i2 = 0; i2 < DefaultHttp2Connection.this.listeners.size(); i2++) {
                try {
                    DefaultHttp2Connection.this.listeners.get(i2).onStreamAdded(defaultStream);
                } catch (Throwable th) {
                    DefaultHttp2Connection.logger.error("Caught Throwable from listener onStreamAdded.", th);
                }
            }
        }

        private void checkNewStreamAllowed(int i2, Http2Stream.State state) throws Http2Exception {
            int i4 = this.lastStreamKnownByPeer;
            if (i4 >= 0 && i2 > i4) {
                throw Http2Exception.streamError(i2, Http2Error.REFUSED_STREAM, "Cannot create stream %d greater than Last-Stream-ID %d from GOAWAY.", Integer.valueOf(i2), Integer.valueOf(this.lastStreamKnownByPeer));
            }
            if (!isValidStreamId(i2)) {
                if (i2 >= 0) {
                    Http2Error http2Error = Http2Error.PROTOCOL_ERROR;
                    Object[] objArr = new Object[2];
                    objArr[0] = Integer.valueOf(i2);
                    objArr[1] = this.server ? "server" : "client";
                    throw Http2Exception.connectionError(http2Error, "Request stream %d is not correct for %s connection", objArr);
                }
                throw new Http2NoMoreStreamIdsException();
            }
            int i5 = this.nextStreamIdToCreate;
            if (i2 < i5) {
                throw Http2Exception.closedStreamError(Http2Error.PROTOCOL_ERROR, "Request stream %d is behind the next expected stream %d", Integer.valueOf(i2), Integer.valueOf(this.nextStreamIdToCreate));
            }
            if (i5 > 0) {
                boolean z3 = state == Http2Stream.State.RESERVED_LOCAL || state == Http2Stream.State.RESERVED_REMOTE;
                if ((!z3 && !canOpenStream()) || (z3 && this.numStreams >= this.maxStreams)) {
                    throw Http2Exception.streamError(i2, Http2Error.REFUSED_STREAM, "Maximum active streams violated for this endpoint.", new Object[0]);
                }
                if (DefaultHttp2Connection.this.isClosed()) {
                    throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "Attempted to create stream id %d after connection was closed", Integer.valueOf(i2));
                }
                return;
            }
            throw Http2Exception.connectionError(Http2Error.REFUSED_STREAM, "Stream IDs are exhausted for this endpoint.", new Object[0]);
        }

        private void incrementExpectedStreamId(int i2) {
            int i4 = this.nextReservationStreamId;
            if (i2 > i4 && i4 >= 0) {
                this.nextReservationStreamId = i2;
            }
            this.nextStreamIdToCreate = i2 + 2;
            this.numStreams++;
        }

        private boolean isLocal() {
            return this == DefaultHttp2Connection.this.localEndpoint;
        }

        private void updateMaxStreams() {
            this.maxStreams = (int) Math.min(2147483647L, this.maxActiveStreams + this.maxReservedStreams);
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public void allowPushTo(boolean z3) {
            if (z3 && this.server) {
                throw new IllegalArgumentException("Servers do not allow push");
            }
            this.pushToAllowed = z3;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean canOpenStream() {
            return this.numActiveStreams < this.maxActiveStreams;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean created(Http2Stream http2Stream) {
            return (http2Stream instanceof DefaultStream) && ((DefaultStream) http2Stream).createdBy() == this;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public F flowController() {
            return this.flowController;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public int incrementAndGetNextStreamId() {
            int i2 = this.nextReservationStreamId;
            if (i2 >= 0) {
                int i4 = i2 + 2;
                this.nextReservationStreamId = i4;
                return i4;
            }
            return i2;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean isServer() {
            return this.server;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean isValidStreamId(int i2) {
            if (i2 > 0) {
                return this.server == ((i2 & 1) == 0);
            }
            return false;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public int lastStreamCreated() {
            int i2 = this.nextStreamIdToCreate;
            if (i2 > 1) {
                return i2 - 2;
            }
            return 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public int lastStreamKnownByPeer() {
            return this.lastStreamKnownByPeer;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public int maxActiveStreams() {
            return this.maxActiveStreams;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean mayHaveCreatedStream(int i2) {
            return isValidStreamId(i2) && i2 <= lastStreamCreated();
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public int numActiveStreams() {
            return this.numActiveStreams;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public Http2Connection.Endpoint<? extends Http2FlowController> opposite() {
            return isLocal() ? DefaultHttp2Connection.this.remoteEndpoint : DefaultHttp2Connection.this.localEndpoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void lastStreamKnownByPeer(int i2) {
            this.lastStreamKnownByPeer = i2;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public DefaultStream createStream(int i2, boolean z3) throws Http2Exception {
            Http2Stream.State activeState = DefaultHttp2Connection.activeState(i2, Http2Stream.State.IDLE, isLocal(), z3);
            checkNewStreamAllowed(i2, activeState);
            DefaultStream defaultStream = new DefaultStream(i2, activeState);
            incrementExpectedStreamId(i2);
            addStream(defaultStream);
            defaultStream.activate();
            return defaultStream;
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public void flowController(F f4) {
            this.flowController = (F) ObjectUtil.checkNotNull(f4, "flowController");
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public void maxActiveStreams(int i2) {
            this.maxActiveStreams = i2;
            updateMaxStreams();
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public DefaultStream reservePushStream(int i2, Http2Stream http2Stream) throws Http2Exception {
            if (http2Stream != null) {
                if (!isLocal() ? http2Stream.state().remoteSideOpen() : http2Stream.state().localSideOpen()) {
                    throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream %d is not open for sending push promise", Integer.valueOf(http2Stream.id()));
                }
                if (opposite().allowPushTo()) {
                    Http2Stream.State state = isLocal() ? Http2Stream.State.RESERVED_LOCAL : Http2Stream.State.RESERVED_REMOTE;
                    checkNewStreamAllowed(i2, state);
                    DefaultStream defaultStream = new DefaultStream(i2, state);
                    incrementExpectedStreamId(i2);
                    addStream(defaultStream);
                    return defaultStream;
                }
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Server push not allowed to opposite endpoint", new Object[0]);
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Parent stream missing", new Object[0]);
        }

        @Override // io.netty.handler.codec.http2.Http2Connection.Endpoint
        public boolean allowPushTo() {
            return this.pushToAllowed;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class DefaultPropertyKey implements Http2Connection.a {
        final int index;

        DefaultPropertyKey(int i2) {
            this.index = i2;
        }

        DefaultPropertyKey verifyConnection(Http2Connection http2Connection) {
            if (http2Connection == DefaultHttp2Connection.this) {
                return this;
            }
            throw new IllegalArgumentException("Using a key that was not created by this connection");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface Event {
        void process();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class PropertyKeyRegistry {
        final List<DefaultPropertyKey> keys;

        private PropertyKeyRegistry() {
            this.keys = new ArrayList(4);
        }

        DefaultPropertyKey newKey() {
            DefaultPropertyKey defaultPropertyKey = new DefaultPropertyKey(this.keys.size());
            this.keys.add(defaultPropertyKey);
            return defaultPropertyKey;
        }

        int size() {
            return this.keys.size();
        }
    }

    public DefaultHttp2Connection(boolean z3) {
        this(z3, 100);
    }

    static Http2Stream.State activeState(int i2, Http2Stream.State state, boolean z3, boolean z4) throws Http2Exception {
        int i4 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[state.ordinal()];
        if (i4 == 1) {
            return z4 ? z3 ? Http2Stream.State.HALF_CLOSED_LOCAL : Http2Stream.State.HALF_CLOSED_REMOTE : Http2Stream.State.OPEN;
        } else if (i4 != 2) {
            if (i4 == 3) {
                return Http2Stream.State.HALF_CLOSED_LOCAL;
            }
            Http2Error http2Error = Http2Error.PROTOCOL_ERROR;
            throw Http2Exception.streamError(i2, http2Error, "Attempting to open a stream in an invalid state: " + state, new Object[0]);
        } else {
            return Http2Stream.State.HALF_CLOSED_REMOTE;
        }
    }

    private void closeStreamsGreaterThanLastKnownStreamId(final int i2, final DefaultEndpoint<?> defaultEndpoint) throws Http2Exception {
        forEachActiveStream(new Http2StreamVisitor() { // from class: io.netty.handler.codec.http2.DefaultHttp2Connection.1
            @Override // io.netty.handler.codec.http2.Http2StreamVisitor
            public boolean visit(Http2Stream http2Stream) {
                if (http2Stream.id() <= i2 || !defaultEndpoint.isValidStreamId(http2Stream.id())) {
                    return true;
                }
                http2Stream.close();
                return true;
            }
        });
    }

    private boolean isStreamMapEmpty() {
        return this.streamMap.size() == 1;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public void addListener(Http2Connection.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Future<Void> close(Promise<Void> promise) {
        ObjectUtil.checkNotNull(promise, "promise");
        Promise<Void> promise2 = this.closePromise;
        if (promise2 == null) {
            this.closePromise = promise;
        } else if (promise2 != promise) {
            if ((promise instanceof ChannelPromise) && ((ChannelPromise) promise2).isVoid()) {
                this.closePromise = promise;
            } else {
                this.closePromise.addListener((GenericFutureListener<? extends Future<? super Void>>) new UnaryPromiseNotifier(promise));
            }
        }
        if (isStreamMapEmpty()) {
            promise.trySuccess(null);
            return promise;
        }
        Iterator<IntObjectMap.PrimitiveEntry<Http2Stream>> it2 = this.streamMap.entries().iterator();
        if (this.activeStreams.allowModifications()) {
            this.activeStreams.incrementPendingIterations();
            while (it2.hasNext()) {
                try {
                    DefaultStream defaultStream = (DefaultStream) it2.next().value();
                    if (defaultStream.id() != 0) {
                        defaultStream.close(it2);
                    }
                } finally {
                    this.activeStreams.decrementPendingIterations();
                }
            }
        } else {
            while (it2.hasNext()) {
                Http2Stream value = it2.next().value();
                if (value.id() != 0) {
                    value.close();
                }
            }
        }
        return this.closePromise;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Stream connectionStream() {
        return this.connectionStream;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Stream forEachActiveStream(Http2StreamVisitor http2StreamVisitor) throws Http2Exception {
        return this.activeStreams.forEachActiveStream(http2StreamVisitor);
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public boolean goAwayReceived() {
        return ((DefaultEndpoint) this.localEndpoint).lastStreamKnownByPeer >= 0;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public boolean goAwaySent() {
        return ((DefaultEndpoint) this.remoteEndpoint).lastStreamKnownByPeer >= 0;
    }

    final boolean isClosed() {
        return this.closePromise != null;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public boolean isServer() {
        return this.localEndpoint.isServer();
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Connection.Endpoint<Http2LocalFlowController> local() {
        return this.localEndpoint;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Connection.a newKey() {
        return this.propertyKeyRegistry.newKey();
    }

    void notifyClosed(Http2Stream http2Stream) {
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            try {
                this.listeners.get(i2).onStreamClosed(http2Stream);
            } catch (Throwable th) {
                logger.error("Caught Throwable from listener onStreamClosed.", th);
            }
        }
    }

    void notifyHalfClosed(Http2Stream http2Stream) {
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            try {
                this.listeners.get(i2).onStreamHalfClosed(http2Stream);
            } catch (Throwable th) {
                logger.error("Caught Throwable from listener onStreamHalfClosed.", th);
            }
        }
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public int numActiveStreams() {
        return this.activeStreams.size();
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Connection.Endpoint<Http2RemoteFlowController> remote() {
        return this.remoteEndpoint;
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public void removeListener(Http2Connection.Listener listener) {
        this.listeners.remove(listener);
    }

    void removeStream(DefaultStream defaultStream, Iterator<?> it2) {
        boolean z3 = true;
        if (it2 == null) {
            if (this.streamMap.remove(defaultStream.id()) == null) {
                z3 = false;
            }
        } else {
            it2.remove();
        }
        if (z3) {
            for (int i2 = 0; i2 < this.listeners.size(); i2++) {
                try {
                    this.listeners.get(i2).onStreamRemoved(defaultStream);
                } catch (Throwable th) {
                    logger.error("Caught Throwable from listener onStreamRemoved.", th);
                }
            }
            if (this.closePromise == null || !isStreamMapEmpty()) {
                return;
            }
            this.closePromise.trySuccess(null);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public Http2Stream stream(int i2) {
        return this.streamMap.get(i2);
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public boolean streamMayHaveExisted(int i2) {
        return this.remoteEndpoint.mayHaveCreatedStream(i2) || this.localEndpoint.mayHaveCreatedStream(i2);
    }

    final DefaultPropertyKey verifyKey(Http2Connection.a aVar) {
        return ((DefaultPropertyKey) ObjectUtil.checkNotNull((DefaultPropertyKey) aVar, "key")).verifyConnection(this);
    }

    public DefaultHttp2Connection(boolean z3, int i2) {
        IntObjectHashMap intObjectHashMap = new IntObjectHashMap();
        this.streamMap = intObjectHashMap;
        this.propertyKeyRegistry = new PropertyKeyRegistry();
        ConnectionStream connectionStream = new ConnectionStream();
        this.connectionStream = connectionStream;
        ArrayList arrayList = new ArrayList(4);
        this.listeners = arrayList;
        this.activeStreams = new ActiveStreams(arrayList);
        this.localEndpoint = new DefaultEndpoint<>(z3, z3 ? Integer.MAX_VALUE : i2);
        this.remoteEndpoint = new DefaultEndpoint<>(!z3, i2);
        intObjectHashMap.put(connectionStream.id(), (int) connectionStream);
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public void goAwayReceived(int i2, long j4, ByteBuf byteBuf) throws Http2Exception {
        if (this.localEndpoint.lastStreamKnownByPeer() < 0 || this.localEndpoint.lastStreamKnownByPeer() >= i2) {
            this.localEndpoint.lastStreamKnownByPeer(i2);
            for (int i4 = 0; i4 < this.listeners.size(); i4++) {
                try {
                    this.listeners.get(i4).onGoAwayReceived(i2, j4, byteBuf);
                } catch (Throwable th) {
                    logger.error("Caught Throwable from listener onGoAwayReceived.", th);
                }
            }
            closeStreamsGreaterThanLastKnownStreamId(i2, this.localEndpoint);
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "lastStreamId MUST NOT increase. Current value: %d new value: %d", Integer.valueOf(this.localEndpoint.lastStreamKnownByPeer()), Integer.valueOf(i2));
    }

    @Override // io.netty.handler.codec.http2.Http2Connection
    public boolean goAwaySent(int i2, long j4, ByteBuf byteBuf) throws Http2Exception {
        if (this.remoteEndpoint.lastStreamKnownByPeer() >= 0) {
            if (i2 == this.remoteEndpoint.lastStreamKnownByPeer()) {
                return false;
            }
            if (i2 > this.remoteEndpoint.lastStreamKnownByPeer()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Last stream identifier must not increase between sending multiple GOAWAY frames (was '%d', is '%d').", Integer.valueOf(this.remoteEndpoint.lastStreamKnownByPeer()), Integer.valueOf(i2));
            }
        }
        this.remoteEndpoint.lastStreamKnownByPeer(i2);
        for (int i4 = 0; i4 < this.listeners.size(); i4++) {
            try {
                this.listeners.get(i4).onGoAwaySent(i2, j4, byteBuf);
            } catch (Throwable th) {
                logger.error("Caught Throwable from listener onGoAwaySent.", th);
            }
        }
        closeStreamsGreaterThanLastKnownStreamId(i2, this.remoteEndpoint);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class DefaultStream implements Http2Stream {
        private static final byte META_STATE_RECV_HEADERS = 16;
        private static final byte META_STATE_RECV_TRAILERS = 32;
        private static final byte META_STATE_SENT_HEADERS = 2;
        private static final byte META_STATE_SENT_PUSHPROMISE = 8;
        private static final byte META_STATE_SENT_RST = 1;
        private static final byte META_STATE_SENT_TRAILERS = 4;
        private final int id;
        private byte metaState;
        private final PropertyMap properties = new PropertyMap();
        private Http2Stream.State state;

        /* loaded from: classes5.dex */
        private class PropertyMap {
            Object[] values;

            private PropertyMap() {
                this.values = EmptyArrays.EMPTY_OBJECTS;
            }

            <V> V add(DefaultPropertyKey defaultPropertyKey, V v3) {
                resizeIfNecessary(defaultPropertyKey.index);
                Object[] objArr = this.values;
                int i2 = defaultPropertyKey.index;
                V v4 = (V) objArr[i2];
                objArr[i2] = v3;
                return v4;
            }

            <V> V get(DefaultPropertyKey defaultPropertyKey) {
                int i2 = defaultPropertyKey.index;
                Object[] objArr = this.values;
                if (i2 >= objArr.length) {
                    return null;
                }
                return (V) objArr[i2];
            }

            <V> V remove(DefaultPropertyKey defaultPropertyKey) {
                int i2 = defaultPropertyKey.index;
                Object[] objArr = this.values;
                if (i2 < objArr.length) {
                    V v3 = (V) objArr[i2];
                    objArr[i2] = null;
                    return v3;
                }
                return null;
            }

            void resizeIfNecessary(int i2) {
                Object[] objArr = this.values;
                if (i2 >= objArr.length) {
                    this.values = Arrays.copyOf(objArr, DefaultHttp2Connection.this.propertyKeyRegistry.size());
                }
            }
        }

        DefaultStream(int i2, Http2Stream.State state) {
            this.id = i2;
            this.state = state;
        }

        void activate() {
            Http2Stream.State state = this.state;
            if (state == Http2Stream.State.HALF_CLOSED_LOCAL) {
                headersSent(false);
            } else if (state == Http2Stream.State.HALF_CLOSED_REMOTE) {
                headersReceived(false);
            }
            DefaultHttp2Connection.this.activeStreams.activate(this);
        }

        Http2Stream close(Iterator<?> it2) {
            Http2Stream.State state = this.state;
            Http2Stream.State state2 = Http2Stream.State.CLOSED;
            if (state == state2) {
                return this;
            }
            this.state = state2;
            DefaultEndpoint<? extends Http2FlowController> createdBy = createdBy();
            createdBy.numStreams--;
            DefaultHttp2Connection.this.activeStreams.deactivate(this, it2);
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream closeLocalSide() {
            int i2 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[this.state.ordinal()];
            if (i2 == 4) {
                this.state = Http2Stream.State.HALF_CLOSED_LOCAL;
                DefaultHttp2Connection.this.notifyHalfClosed(this);
            } else if (i2 != 5) {
                close();
            }
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream closeRemoteSide() {
            int i2 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[this.state.ordinal()];
            if (i2 == 4) {
                this.state = Http2Stream.State.HALF_CLOSED_REMOTE;
                DefaultHttp2Connection.this.notifyHalfClosed(this);
            } else if (i2 != 6) {
                close();
            }
            return this;
        }

        DefaultEndpoint<? extends Http2FlowController> createdBy() {
            return DefaultHttp2Connection.this.localEndpoint.isValidStreamId(this.id) ? DefaultHttp2Connection.this.localEndpoint : DefaultHttp2Connection.this.remoteEndpoint;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public final <V> V getProperty(Http2Connection.a aVar) {
            return (V) this.properties.get(DefaultHttp2Connection.this.verifyKey(aVar));
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream headersReceived(boolean z3) {
            if (!z3) {
                this.metaState = (byte) (this.metaState | (isHeadersReceived() ? (byte) 32 : (byte) 16));
            }
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream headersSent(boolean z3) {
            if (!z3) {
                this.metaState = (byte) (this.metaState | (isHeadersSent() ? (byte) 4 : (byte) 2));
            }
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public final int id() {
            return this.id;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isHeadersReceived() {
            return (this.metaState & 16) != 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isHeadersSent() {
            return (this.metaState & 2) != 0;
        }

        final boolean isLocal() {
            return DefaultHttp2Connection.this.localEndpoint.isValidStreamId(this.id);
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isPushPromiseSent() {
            return (this.metaState & 8) != 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isResetSent() {
            return (this.metaState & 1) != 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isTrailersReceived() {
            return (this.metaState & 32) != 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public boolean isTrailersSent() {
            return (this.metaState & 4) != 0;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream open(boolean z3) throws Http2Exception {
            this.state = DefaultHttp2Connection.activeState(this.id, this.state, isLocal(), z3);
            if (createdBy().canOpenStream()) {
                activate();
                return this;
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Maximum active streams violated for this endpoint.", new Object[0]);
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream pushPromiseSent() {
            this.metaState = (byte) (this.metaState | 8);
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public final <V> V removeProperty(Http2Connection.a aVar) {
            return (V) this.properties.remove(DefaultHttp2Connection.this.verifyKey(aVar));
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream resetSent() {
            this.metaState = (byte) (this.metaState | 1);
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public final <V> V setProperty(Http2Connection.a aVar, V v3) {
            return (V) this.properties.add(DefaultHttp2Connection.this.verifyKey(aVar), v3);
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public final Http2Stream.State state() {
            return this.state;
        }

        @Override // io.netty.handler.codec.http2.Http2Stream
        public Http2Stream close() {
            return close(null);
        }
    }
}
