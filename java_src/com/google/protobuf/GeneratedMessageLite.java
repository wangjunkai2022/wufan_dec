package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.Builder;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.getDefaultInstance();
    protected int memoizedSerializedSize = -1;

    /* renamed from: com.google.protobuf.GeneratedMessageLite$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {
        private final MessageType defaultInstance;
        protected MessageType instance;
        protected boolean isBuilt = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder(MessageType messagetype) {
            this.defaultInstance = messagetype;
            this.instance = (MessageType) messagetype.dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void copyOnWrite() {
            if (this.isBuilt) {
                MessageType messagetype = (MessageType) this.instance.dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
                messagetype.visit(MergeFromVisitor.INSTANCE, this.instance);
                this.instance = messagetype;
                this.isBuilt = false;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractMessageLite.Builder
        protected /* bridge */ /* synthetic */ AbstractMessageLite.Builder internalMergeFrom(AbstractMessageLite abstractMessageLite) {
            return internalMergeFrom((Builder<MessageType, BuilderType>) ((GeneratedMessageLite) abstractMessageLite));
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return GeneratedMessageLite.isInitialized(this.instance, false);
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public final MessageType build() {
            MessageType buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public MessageType buildPartial() {
            if (this.isBuilt) {
                return this.instance;
            }
            this.instance.makeImmutable();
            this.isBuilt = true;
            return this.instance;
        }

        @Override // com.google.protobuf.MessageLite.Builder
        public final BuilderType clear() {
            this.instance = (MessageType) this.instance.dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public MessageType getDefaultInstanceForType() {
            return this.defaultInstance;
        }

        protected BuilderType internalMergeFrom(MessageType messagetype) {
            return mergeFrom((Builder<MessageType, BuilderType>) messagetype);
        }

        public BuilderType mergeFrom(MessageType messagetype) {
            copyOnWrite();
            this.instance.visit(MergeFromVisitor.INSTANCE, messagetype);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public BuilderType mo11clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder
        public BuilderType mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            copyOnWrite();
            try {
                this.instance.dynamicMethod(MethodToInvoke.MERGE_FROM_STREAM, codedInputStream, extensionRegistryLite);
                return this;
            } catch (RuntimeException e4) {
                if (e4.getCause() instanceof IOException) {
                    throw ((IOException) e4.getCause());
                }
                throw e4;
            }
        }
    }

    /* loaded from: classes2.dex */
    protected static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {
        private T defaultInstance;

        public DefaultInstanceBasedParser(T t3) {
            this.defaultInstance = t3;
        }

        @Override // com.google.protobuf.Parser
        public T parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (T) GeneratedMessageLite.parsePartialFrom(this.defaultInstance, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    static class EqualsVisitor implements Visitor {
        static final EqualsVisitor INSTANCE = new EqualsVisitor();
        static final NotEqualsException NOT_EQUALS = new NotEqualsException();

        /* loaded from: classes2.dex */
        static final class NotEqualsException extends RuntimeException {
            NotEqualsException() {
            }
        }

        private EqualsVisitor() {
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public boolean visitBoolean(boolean z3, boolean z4, boolean z5, boolean z6) {
            if (z3 == z5 && z4 == z6) {
                return z4;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.BooleanList visitBooleanList(Internal.BooleanList booleanList, Internal.BooleanList booleanList2) {
            if (booleanList.equals(booleanList2)) {
                return booleanList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public ByteString visitByteString(boolean z3, ByteString byteString, boolean z4, ByteString byteString2) {
            if (z3 == z4 && byteString.equals(byteString2)) {
                return byteString;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public double visitDouble(boolean z3, double d4, boolean z4, double d5) {
            if (z3 == z4 && d4 == d5) {
                return d4;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.DoubleList visitDoubleList(Internal.DoubleList doubleList, Internal.DoubleList doubleList2) {
            if (doubleList.equals(doubleList2)) {
                return doubleList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public FieldSet<ExtensionDescriptor> visitExtensions(FieldSet<ExtensionDescriptor> fieldSet, FieldSet<ExtensionDescriptor> fieldSet2) {
            if (fieldSet.equals(fieldSet2)) {
                return fieldSet;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public float visitFloat(boolean z3, float f4, boolean z4, float f5) {
            if (z3 == z4 && f4 == f5) {
                return f4;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.FloatList visitFloatList(Internal.FloatList floatList, Internal.FloatList floatList2) {
            if (floatList.equals(floatList2)) {
                return floatList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public int visitInt(boolean z3, int i2, boolean z4, int i4) {
            if (z3 == z4 && i2 == i4) {
                return i2;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.IntList visitIntList(Internal.IntList intList, Internal.IntList intList2) {
            if (intList.equals(intList2)) {
                return intList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public LazyFieldLite visitLazyMessage(LazyFieldLite lazyFieldLite, LazyFieldLite lazyFieldLite2) {
            if (lazyFieldLite == null && lazyFieldLite2 == null) {
                return null;
            }
            if (lazyFieldLite != null && lazyFieldLite2 != null) {
                if (lazyFieldLite.equals(lazyFieldLite2)) {
                    return lazyFieldLite;
                }
                throw NOT_EQUALS;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T> Internal.ProtobufList<T> visitList(Internal.ProtobufList<T> protobufList, Internal.ProtobufList<T> protobufList2) {
            if (protobufList.equals(protobufList2)) {
                return protobufList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public long visitLong(boolean z3, long j4, boolean z4, long j5) {
            if (z3 == z4 && j4 == j5) {
                return j4;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.LongList visitLongList(Internal.LongList longList, Internal.LongList longList2) {
            if (longList.equals(longList2)) {
                return longList;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <K, V> MapFieldLite<K, V> visitMap(MapFieldLite<K, V> mapFieldLite, MapFieldLite<K, V> mapFieldLite2) {
            if (mapFieldLite.equals(mapFieldLite2)) {
                return mapFieldLite;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T extends MessageLite> T visitMessage(T t3, T t4) {
            if (t3 == null && t4 == null) {
                return null;
            }
            if (t3 != null && t4 != null) {
                ((GeneratedMessageLite) t3).equals(this, t4);
                return t3;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofBoolean(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofByteString(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofDouble(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofFloat(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofInt(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLazyMessage(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLong(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofMessage(boolean z3, Object obj, Object obj2) {
            if (z3 && ((GeneratedMessageLite) obj).equals(this, (MessageLite) obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public void visitOneofNotSet(boolean z3) {
            if (z3) {
                throw NOT_EQUALS;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofString(boolean z3, Object obj, Object obj2) {
            if (z3 && obj.equals(obj2)) {
                return obj;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public String visitString(boolean z3, String str, boolean z4, String str2) {
            if (z3 == z4 && str.equals(str2)) {
                return str;
            }
            throw NOT_EQUALS;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public UnknownFieldSetLite visitUnknownFields(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
            if (unknownFieldSetLite.equals(unknownFieldSetLite2)) {
                return unknownFieldSetLite;
            }
            throw NOT_EQUALS;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected ExtendableBuilder(MessageType messagetype) {
            super(messagetype);
            MessageType messagetype2 = this.instance;
            ((ExtendableMessage) messagetype2).extensions = ((ExtendableMessage) messagetype2).extensions.m12clone();
        }

        private void verifyExtensionContainingType(GeneratedExtension<MessageType, ?> generatedExtension) {
            if (generatedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final <Type> BuilderType addExtension(ExtensionLite<MessageType, List<Type>> extensionLite, Type type) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions.addRepeatedField(checkIsLite.descriptor, checkIsLite.singularToFieldSetType(type));
            return this;
        }

        public final <Type> BuilderType clearExtension(ExtensionLite<MessageType, ?> extensionLite) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions.clearField(checkIsLite.descriptor);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageLite.Builder
        public void copyOnWrite() {
            if (this.isBuilt) {
                super.copyOnWrite();
                MessageType messagetype = this.instance;
                ((ExtendableMessage) messagetype).extensions = ((ExtendableMessage) messagetype).extensions.m12clone();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(extensionLite);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(ExtensionLite<MessageType, List<Type>> extensionLite) {
            return ((ExtendableMessage) this.instance).getExtensionCount(extensionLite);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(ExtensionLite<MessageType, Type> extensionLite) {
            return ((ExtendableMessage) this.instance).hasExtension(extensionLite);
        }

        void internalSetExtensionSet(FieldSet<ExtensionDescriptor> fieldSet) {
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions = fieldSet;
        }

        public final <Type> BuilderType setExtension(ExtensionLite<MessageType, Type> extensionLite, Type type) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions.setField(checkIsLite.descriptor, checkIsLite.toFieldSetType(type));
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i2) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(extensionLite, i2);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Builder, com.google.protobuf.MessageLite.Builder
        public final MessageType buildPartial() {
            if (this.isBuilt) {
                return (MessageType) this.instance;
            }
            ((ExtendableMessage) this.instance).extensions.makeImmutable();
            return (MessageType) super.buildPartial();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public BuilderType mo11clone() {
            return (BuilderType) super.mo11clone();
        }

        public final <Type> BuilderType setExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i2, Type type) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions.setRepeatedField(checkIsLite.descriptor, i2, checkIsLite.singularToFieldSetType(type));
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected FieldSet<ExtensionDescriptor> extensions = FieldSet.newFieldSet();

        /* loaded from: classes2.dex */
        protected class ExtensionWriter {
            private final Iterator<Map.Entry<ExtensionDescriptor, Object>> iter;
            private final boolean messageSetWireFormat;
            private Map.Entry<ExtensionDescriptor, Object> next;

            /* synthetic */ ExtensionWriter(ExtendableMessage extendableMessage, boolean z3, AnonymousClass1 anonymousClass1) {
                this(z3);
            }

            public void writeUntil(int i2, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<ExtensionDescriptor, Object> entry = this.next;
                    if (entry == null || entry.getKey().getNumber() >= i2) {
                        return;
                    }
                    ExtensionDescriptor key = this.next.getKey();
                    if (this.messageSetWireFormat && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        codedOutputStream.writeMessageSetExtension(key.getNumber(), (MessageLite) this.next.getValue());
                    } else {
                        FieldSet.writeField(key, this.next.getValue(), codedOutputStream);
                    }
                    if (this.iter.hasNext()) {
                        this.next = this.iter.next();
                    } else {
                        this.next = null;
                    }
                }
            }

            private ExtensionWriter(boolean z3) {
                Iterator<Map.Entry<ExtensionDescriptor, Object>> it2 = ExtendableMessage.this.extensions.iterator();
                this.iter = it2;
                if (it2.hasNext()) {
                    this.next = it2.next();
                }
                this.messageSetWireFormat = z3;
            }
        }

        private void verifyExtensionContainingType(GeneratedExtension<MessageType, ?> generatedExtension) {
            if (generatedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        protected boolean extensionsAreInitialized() {
            return this.extensions.isInitialized();
        }

        protected int extensionsSerializedSize() {
            return this.extensions.getSerializedSize();
        }

        protected int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.getMessageSetSerializedSize();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLiteOrBuilder
        public /* bridge */ /* synthetic */ MessageLite getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            Object field = this.extensions.getField(checkIsLite.descriptor);
            if (field == null) {
                return checkIsLite.defaultValue;
            }
            return (Type) checkIsLite.fromFieldSetType(field);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(ExtensionLite<MessageType, List<Type>> extensionLite) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            return this.extensions.getRepeatedFieldCount(checkIsLite.descriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(ExtensionLite<MessageType, Type> extensionLite) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            return this.extensions.hasField(checkIsLite.descriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final void makeImmutable() {
            super.makeImmutable();
            this.extensions.makeImmutable();
        }

        protected final void mergeExtensionFields(MessageType messagetype) {
            if (this.extensions.isImmutable()) {
                this.extensions = this.extensions.m12clone();
            }
            this.extensions.mergeFrom(messagetype.extensions);
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite
        public /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType() {
            return super.newBuilderForType();
        }

        protected ExtendableMessage<MessageType, BuilderType>.ExtensionWriter newExtensionWriter() {
            return new ExtensionWriter(this, false, null);
        }

        protected ExtendableMessage<MessageType, BuilderType>.ExtensionWriter newMessageSetExtensionWriter() {
            return new ExtensionWriter(this, true, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected <MessageType extends com.google.protobuf.MessageLite> boolean parseUnknownField(MessageType r7, com.google.protobuf.CodedInputStream r8, com.google.protobuf.ExtensionRegistryLite r9, int r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.GeneratedMessageLite.ExtendableMessage.parseUnknownField(com.google.protobuf.MessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite, int):boolean");
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite
        public /* bridge */ /* synthetic */ MessageLite.Builder toBuilder() {
            return super.toBuilder();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.GeneratedMessageLite
        /* bridge */ /* synthetic */ void visit(Visitor visitor, GeneratedMessageLite generatedMessageLite) {
            visit(visitor, (Visitor) ((ExtendableMessage) generatedMessageLite));
        }

        final void visit(Visitor visitor, MessageType messagetype) {
            super.visit(visitor, (Visitor) messagetype);
            this.extensions = visitor.visitExtensions(this.extensions, messagetype.extensions);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i2) {
            GeneratedExtension<MessageType, ?> checkIsLite = GeneratedMessageLite.checkIsLite(extensionLite);
            verifyExtensionContainingType(checkIsLite);
            return (Type) checkIsLite.singularFromFieldSetType(this.extensions.getRepeatedField(checkIsLite.descriptor, i2));
        }
    }

    /* loaded from: classes2.dex */
    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends MessageLiteOrBuilder {
        <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite);

        <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i2);

        <Type> int getExtensionCount(ExtensionLite<MessageType, List<Type>> extensionLite);

        <Type> boolean hasExtension(ExtensionLite<MessageType, Type> extensionLite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class ExtensionDescriptor implements FieldSet.FieldDescriptorLite<ExtensionDescriptor> {
        final Internal.EnumLiteMap<?> enumTypeMap;
        final boolean isPacked;
        final boolean isRepeated;
        final int number;
        final WireFormat.FieldType type;

        ExtensionDescriptor(Internal.EnumLiteMap<?> enumLiteMap, int i2, WireFormat.FieldType fieldType, boolean z3, boolean z4) {
            this.enumTypeMap = enumLiteMap;
            this.number = i2;
            this.type = fieldType;
            this.isRepeated = z3;
            this.isPacked = z4;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public Internal.EnumLiteMap<?> getEnumType() {
            return this.enumTypeMap;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.JavaType getLiteJavaType() {
            return this.type.getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.FieldType getLiteType() {
            return this.type;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.number;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Builder) builder).mergeFrom((Builder) ((GeneratedMessageLite) messageLite));
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            return this.isPacked;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.isRepeated;
        }

        @Override // java.lang.Comparable
        public int compareTo(ExtensionDescriptor extensionDescriptor) {
            return this.number - extensionDescriptor.number;
        }
    }

    /* loaded from: classes2.dex */
    public static class GeneratedExtension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {
        final ContainingType containingTypeDefaultInstance;
        final Type defaultValue;
        final ExtensionDescriptor descriptor;
        final MessageLite messageDefaultInstance;

        GeneratedExtension(ContainingType containingtype, Type type, MessageLite messageLite, ExtensionDescriptor extensionDescriptor, Class cls) {
            if (containingtype != null) {
                if (extensionDescriptor.getLiteType() == WireFormat.FieldType.MESSAGE && messageLite == null) {
                    throw new IllegalArgumentException("Null messageDefaultInstance");
                }
                this.containingTypeDefaultInstance = containingtype;
                this.defaultValue = type;
                this.messageDefaultInstance = messageLite;
                this.descriptor = extensionDescriptor;
                return;
            }
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }

        Object fromFieldSetType(Object obj) {
            if (this.descriptor.isRepeated()) {
                if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : (List) obj) {
                        arrayList.add(singularFromFieldSetType(obj2));
                    }
                    return arrayList;
                }
                return obj;
            }
            return singularFromFieldSetType(obj);
        }

        public ContainingType getContainingTypeDefaultInstance() {
            return this.containingTypeDefaultInstance;
        }

        @Override // com.google.protobuf.ExtensionLite
        public Type getDefaultValue() {
            return this.defaultValue;
        }

        @Override // com.google.protobuf.ExtensionLite
        public WireFormat.FieldType getLiteType() {
            return this.descriptor.getLiteType();
        }

        @Override // com.google.protobuf.ExtensionLite
        public MessageLite getMessageDefaultInstance() {
            return this.messageDefaultInstance;
        }

        @Override // com.google.protobuf.ExtensionLite
        public int getNumber() {
            return this.descriptor.getNumber();
        }

        @Override // com.google.protobuf.ExtensionLite
        public boolean isRepeated() {
            return this.descriptor.isRepeated;
        }

        Object singularFromFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? this.descriptor.enumTypeMap.findValueByNumber(((Integer) obj).intValue()) : obj;
        }

        Object singularToFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((Internal.EnumLite) obj).getNumber()) : obj;
        }

        Object toFieldSetType(Object obj) {
            if (this.descriptor.isRepeated()) {
                if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : (List) obj) {
                        arrayList.add(singularToFieldSetType(obj2));
                    }
                    return arrayList;
                }
                return obj;
            }
            return singularToFieldSetType(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class MergeFromVisitor implements Visitor {
        public static final MergeFromVisitor INSTANCE = new MergeFromVisitor();

        private MergeFromVisitor() {
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public boolean visitBoolean(boolean z3, boolean z4, boolean z5, boolean z6) {
            return z5 ? z6 : z4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$BooleanList] */
        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.BooleanList visitBooleanList(Internal.BooleanList booleanList, Internal.BooleanList booleanList2) {
            int size = booleanList.size();
            int size2 = booleanList2.size();
            Internal.ProtobufList<Boolean> protobufList = booleanList;
            protobufList = booleanList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = booleanList.isModifiable();
                Internal.ProtobufList<Boolean> protobufList2 = booleanList;
                if (!isModifiable) {
                    protobufList2 = booleanList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList2.addAll(booleanList2);
                protobufList = protobufList2;
            }
            return size > 0 ? protobufList : booleanList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public ByteString visitByteString(boolean z3, ByteString byteString, boolean z4, ByteString byteString2) {
            return z4 ? byteString2 : byteString;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public double visitDouble(boolean z3, double d4, boolean z4, double d5) {
            return z4 ? d5 : d4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$DoubleList] */
        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.DoubleList visitDoubleList(Internal.DoubleList doubleList, Internal.DoubleList doubleList2) {
            int size = doubleList.size();
            int size2 = doubleList2.size();
            Internal.ProtobufList<Double> protobufList = doubleList;
            protobufList = doubleList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = doubleList.isModifiable();
                Internal.ProtobufList<Double> protobufList2 = doubleList;
                if (!isModifiable) {
                    protobufList2 = doubleList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList2.addAll(doubleList2);
                protobufList = protobufList2;
            }
            return size > 0 ? protobufList : doubleList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public FieldSet<ExtensionDescriptor> visitExtensions(FieldSet<ExtensionDescriptor> fieldSet, FieldSet<ExtensionDescriptor> fieldSet2) {
            if (fieldSet.isImmutable()) {
                fieldSet = fieldSet.m12clone();
            }
            fieldSet.mergeFrom(fieldSet2);
            return fieldSet;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public float visitFloat(boolean z3, float f4, boolean z4, float f5) {
            return z4 ? f5 : f4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$FloatList] */
        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.FloatList visitFloatList(Internal.FloatList floatList, Internal.FloatList floatList2) {
            int size = floatList.size();
            int size2 = floatList2.size();
            Internal.ProtobufList<Float> protobufList = floatList;
            protobufList = floatList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = floatList.isModifiable();
                Internal.ProtobufList<Float> protobufList2 = floatList;
                if (!isModifiable) {
                    protobufList2 = floatList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList2.addAll(floatList2);
                protobufList = protobufList2;
            }
            return size > 0 ? protobufList : floatList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public int visitInt(boolean z3, int i2, boolean z4, int i4) {
            return z4 ? i4 : i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$IntList] */
        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.IntList visitIntList(Internal.IntList intList, Internal.IntList intList2) {
            int size = intList.size();
            int size2 = intList2.size();
            Internal.ProtobufList<Integer> protobufList = intList;
            protobufList = intList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = intList.isModifiable();
                Internal.ProtobufList<Integer> protobufList2 = intList;
                if (!isModifiable) {
                    protobufList2 = intList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList2.addAll(intList2);
                protobufList = protobufList2;
            }
            return size > 0 ? protobufList : intList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public LazyFieldLite visitLazyMessage(LazyFieldLite lazyFieldLite, LazyFieldLite lazyFieldLite2) {
            if (lazyFieldLite2 != null) {
                if (lazyFieldLite == null) {
                    lazyFieldLite = new LazyFieldLite();
                }
                lazyFieldLite.merge(lazyFieldLite2);
            }
            return lazyFieldLite;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T> Internal.ProtobufList<T> visitList(Internal.ProtobufList<T> protobufList, Internal.ProtobufList<T> protobufList2) {
            int size = protobufList.size();
            int size2 = protobufList2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufList.isModifiable()) {
                    protobufList = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList.addAll(protobufList2);
            }
            return size > 0 ? protobufList : protobufList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public long visitLong(boolean z3, long j4, boolean z4, long j5) {
            return z4 ? j5 : j4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$LongList] */
        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.LongList visitLongList(Internal.LongList longList, Internal.LongList longList2) {
            int size = longList.size();
            int size2 = longList2.size();
            Internal.ProtobufList<Long> protobufList = longList;
            protobufList = longList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = longList.isModifiable();
                Internal.ProtobufList<Long> protobufList2 = longList;
                if (!isModifiable) {
                    protobufList2 = longList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList2.addAll(longList2);
                protobufList = protobufList2;
            }
            return size > 0 ? protobufList : longList2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <K, V> MapFieldLite<K, V> visitMap(MapFieldLite<K, V> mapFieldLite, MapFieldLite<K, V> mapFieldLite2) {
            if (!mapFieldLite2.isEmpty()) {
                if (!mapFieldLite.isMutable()) {
                    mapFieldLite = mapFieldLite.mutableCopy();
                }
                mapFieldLite.mergeFrom(mapFieldLite2);
            }
            return mapFieldLite;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T extends MessageLite> T visitMessage(T t3, T t4) {
            if (t3 == null || t4 == null) {
                return t3 != null ? t3 : t4;
            }
            return (T) t3.toBuilder().mergeFrom(t4).build();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofBoolean(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofByteString(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofDouble(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofFloat(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofInt(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLazyMessage(boolean z3, Object obj, Object obj2) {
            LazyFieldLite lazyFieldLite = z3 ? (LazyFieldLite) obj : new LazyFieldLite();
            lazyFieldLite.merge((LazyFieldLite) obj2);
            return lazyFieldLite;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLong(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofMessage(boolean z3, Object obj, Object obj2) {
            return z3 ? visitMessage((MessageLite) obj, (MessageLite) obj2) : obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public void visitOneofNotSet(boolean z3) {
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofString(boolean z3, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public String visitString(boolean z3, String str, boolean z4, String str2) {
            return z4 ? str2 : str;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public UnknownFieldSetLite visitUnknownFields(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
            return unknownFieldSetLite2 == UnknownFieldSetLite.getDefaultInstance() ? unknownFieldSetLite : UnknownFieldSetLite.mutableCopyOf(unknownFieldSetLite, unknownFieldSetLite2);
        }
    }

    /* loaded from: classes2.dex */
    public enum MethodToInvoke {
        IS_INITIALIZED,
        VISIT,
        MERGE_FROM_STREAM,
        MAKE_IMMUTABLE,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* loaded from: classes2.dex */
    protected static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final String messageClassName;

        SerializedForm(MessageLite messageLite) {
            this.messageClassName = messageLite.getClass().getName();
            this.asBytes = messageLite.toByteArray();
        }

        public static SerializedForm of(MessageLite messageLite) {
            return new SerializedForm(messageLite);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                Field declaredField = Class.forName(this.messageClassName).getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e4) {
                throw new RuntimeException("Unable to understand proto buffer", e4);
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e5);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("Unable to call parsePartialFrom", e6);
            } catch (NoSuchFieldException e7) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e7);
            } catch (SecurityException e8) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e8);
            }
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                Field declaredField = Class.forName(this.messageClassName).getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e4) {
                throw new RuntimeException("Unable to understand proto buffer", e4);
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e5);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("Unable to call parsePartialFrom", e6);
            } catch (NoSuchFieldException unused) {
                return readResolveFallback();
            } catch (SecurityException e7) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public interface Visitor {
        boolean visitBoolean(boolean z3, boolean z4, boolean z5, boolean z6);

        Internal.BooleanList visitBooleanList(Internal.BooleanList booleanList, Internal.BooleanList booleanList2);

        ByteString visitByteString(boolean z3, ByteString byteString, boolean z4, ByteString byteString2);

        double visitDouble(boolean z3, double d4, boolean z4, double d5);

        Internal.DoubleList visitDoubleList(Internal.DoubleList doubleList, Internal.DoubleList doubleList2);

        FieldSet<ExtensionDescriptor> visitExtensions(FieldSet<ExtensionDescriptor> fieldSet, FieldSet<ExtensionDescriptor> fieldSet2);

        float visitFloat(boolean z3, float f4, boolean z4, float f5);

        Internal.FloatList visitFloatList(Internal.FloatList floatList, Internal.FloatList floatList2);

        int visitInt(boolean z3, int i2, boolean z4, int i4);

        Internal.IntList visitIntList(Internal.IntList intList, Internal.IntList intList2);

        LazyFieldLite visitLazyMessage(LazyFieldLite lazyFieldLite, LazyFieldLite lazyFieldLite2);

        <T> Internal.ProtobufList<T> visitList(Internal.ProtobufList<T> protobufList, Internal.ProtobufList<T> protobufList2);

        long visitLong(boolean z3, long j4, boolean z4, long j5);

        Internal.LongList visitLongList(Internal.LongList longList, Internal.LongList longList2);

        <K, V> MapFieldLite<K, V> visitMap(MapFieldLite<K, V> mapFieldLite, MapFieldLite<K, V> mapFieldLite2);

        <T extends MessageLite> T visitMessage(T t3, T t4);

        Object visitOneofBoolean(boolean z3, Object obj, Object obj2);

        Object visitOneofByteString(boolean z3, Object obj, Object obj2);

        Object visitOneofDouble(boolean z3, Object obj, Object obj2);

        Object visitOneofFloat(boolean z3, Object obj, Object obj2);

        Object visitOneofInt(boolean z3, Object obj, Object obj2);

        Object visitOneofLazyMessage(boolean z3, Object obj, Object obj2);

        Object visitOneofLong(boolean z3, Object obj, Object obj2);

        Object visitOneofMessage(boolean z3, Object obj, Object obj2);

        void visitOneofNotSet(boolean z3);

        Object visitOneofString(boolean z3, Object obj, Object obj2);

        String visitString(boolean z3, String str, boolean z4, String str2);

        UnknownFieldSetLite visitUnknownFields(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>, T> GeneratedExtension<MessageType, T> checkIsLite(ExtensionLite<MessageType, T> extensionLite) {
        if (extensionLite.isLite()) {
            return (GeneratedExtension) extensionLite;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    private static <T extends GeneratedMessageLite<T, ?>> T checkMessageInitialized(T t3) throws InvalidProtocolBufferException {
        if (t3 == null || t3.isInitialized()) {
            return t3;
        }
        throw t3.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(t3);
    }

    protected static Internal.BooleanList emptyBooleanList() {
        return BooleanArrayList.emptyList();
    }

    protected static Internal.DoubleList emptyDoubleList() {
        return DoubleArrayList.emptyList();
    }

    protected static Internal.FloatList emptyFloatList() {
        return FloatArrayList.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Internal.IntList emptyIntList() {
        return IntArrayList.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Internal.LongList emptyLongList() {
        return LongArrayList.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> Internal.ProtobufList<E> emptyProtobufList() {
        return ProtobufArrayList.emptyList();
    }

    private final void ensureUnknownFieldsInitialized() {
        if (this.unknownFields == UnknownFieldSetLite.getDefaultInstance()) {
            this.unknownFields = UnknownFieldSetLite.newInstance();
        }
    }

    static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e4);
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$IntList] */
    public static Internal.IntList mutableCopy(Internal.IntList intList) {
        int size = intList.size();
        return intList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, MessageLite messageLite, Internal.EnumLiteMap<?> enumLiteMap, int i2, WireFormat.FieldType fieldType, boolean z3, Class cls) {
        return new GeneratedExtension<>(containingtype, Collections.emptyList(), messageLite, new ExtensionDescriptor(enumLiteMap, i2, fieldType, true, z3), cls);
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, MessageLite messageLite, Internal.EnumLiteMap<?> enumLiteMap, int i2, WireFormat.FieldType fieldType, Class cls) {
        return new GeneratedExtension<>(containingtype, type, messageLite, new ExtensionDescriptor(enumLiteMap, i2, fieldType, false, false), cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t3, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t3, inputStream, ExtensionRegistryLite.getEmptyRegistry()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, ByteString byteString) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parseFrom(t3, byteString, ExtensionRegistryLite.getEmptyRegistry()));
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialDelimitedFrom(T t3, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            CodedInputStream newInstance = CodedInputStream.newInstance(new AbstractMessageLite.Builder.LimitedInputStream(inputStream, CodedInputStream.readRawVarint32(read, inputStream)));
            T t4 = (T) parsePartialFrom(t3, newInstance, extensionRegistryLite);
            try {
                newInstance.checkLastTagWas(0);
                return t4;
            } catch (InvalidProtocolBufferException e4) {
                throw e4.setUnfinishedMessage(t4);
            }
        } catch (IOException e5) {
            throw new InvalidProtocolBufferException(e5.getMessage());
        }
    }

    static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t3, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        T t4 = (T) t3.dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            t4.dynamicMethod(MethodToInvoke.MERGE_FROM_STREAM, codedInputStream, extensionRegistryLite);
            t4.makeImmutable();
            return t4;
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj) {
        return dynamicMethod(methodToInvoke, obj, null);
    }

    protected abstract Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (getDefaultInstanceForType().getClass().isInstance(obj)) {
            try {
                visit(EqualsVisitor.INSTANCE, (GeneratedMessageLite) obj);
                return true;
            } catch (EqualsVisitor.NotEqualsException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.MessageLite
    public final Parser<MessageType> getParserForType() {
        return (Parser) dynamicMethod(MethodToInvoke.GET_PARSER);
    }

    public int hashCode() {
        if (this.memoizedHashCode == 0) {
            HashCodeVisitor hashCodeVisitor = new HashCodeVisitor(null);
            visit(hashCodeVisitor, this);
            this.memoizedHashCode = hashCodeVisitor.hashCode;
        }
        return this.memoizedHashCode;
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return dynamicMethod(MethodToInvoke.IS_INITIALIZED, Boolean.TRUE) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void makeImmutable() {
        dynamicMethod(MethodToInvoke.MAKE_IMMUTABLE);
        this.unknownFields.makeImmutable();
    }

    protected void mergeLengthDelimitedField(int i2, ByteString byteString) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeLengthDelimitedField(i2, byteString);
    }

    protected final void mergeUnknownFields(UnknownFieldSetLite unknownFieldSetLite) {
        this.unknownFields = UnknownFieldSetLite.mutableCopyOf(this.unknownFields, unknownFieldSetLite);
    }

    protected void mergeVarintField(int i2, int i4) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeVarintField(i2, i4);
    }

    protected boolean parseUnknownField(int i2, CodedInputStream codedInputStream) throws IOException {
        if (WireFormat.getTagWireType(i2) == 4) {
            return false;
        }
        ensureUnknownFieldsInitialized();
        return this.unknownFields.mergeFieldFrom(i2, codedInputStream);
    }

    public String toString() {
        return MessageLiteToString.toString(this, super.toString());
    }

    void visit(Visitor visitor, MessageType messagetype) {
        dynamicMethod(MethodToInvoke.VISIT, visitor, messagetype);
        this.unknownFields = visitor.visitUnknownFields(this.unknownFields, messagetype.unknownFields);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class HashCodeVisitor implements Visitor {
        private int hashCode;

        private HashCodeVisitor() {
            this.hashCode = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public boolean visitBoolean(boolean z3, boolean z4, boolean z5, boolean z6) {
            this.hashCode = (this.hashCode * 53) + Internal.hashBoolean(z4);
            return z4;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.BooleanList visitBooleanList(Internal.BooleanList booleanList, Internal.BooleanList booleanList2) {
            this.hashCode = (this.hashCode * 53) + booleanList.hashCode();
            return booleanList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public ByteString visitByteString(boolean z3, ByteString byteString, boolean z4, ByteString byteString2) {
            this.hashCode = (this.hashCode * 53) + byteString.hashCode();
            return byteString;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public double visitDouble(boolean z3, double d4, boolean z4, double d5) {
            this.hashCode = (this.hashCode * 53) + Internal.hashLong(Double.doubleToLongBits(d4));
            return d4;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.DoubleList visitDoubleList(Internal.DoubleList doubleList, Internal.DoubleList doubleList2) {
            this.hashCode = (this.hashCode * 53) + doubleList.hashCode();
            return doubleList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public FieldSet<ExtensionDescriptor> visitExtensions(FieldSet<ExtensionDescriptor> fieldSet, FieldSet<ExtensionDescriptor> fieldSet2) {
            this.hashCode = (this.hashCode * 53) + fieldSet.hashCode();
            return fieldSet;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public float visitFloat(boolean z3, float f4, boolean z4, float f5) {
            this.hashCode = (this.hashCode * 53) + Float.floatToIntBits(f4);
            return f4;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.FloatList visitFloatList(Internal.FloatList floatList, Internal.FloatList floatList2) {
            this.hashCode = (this.hashCode * 53) + floatList.hashCode();
            return floatList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public int visitInt(boolean z3, int i2, boolean z4, int i4) {
            this.hashCode = (this.hashCode * 53) + i2;
            return i2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.IntList visitIntList(Internal.IntList intList, Internal.IntList intList2) {
            this.hashCode = (this.hashCode * 53) + intList.hashCode();
            return intList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public LazyFieldLite visitLazyMessage(LazyFieldLite lazyFieldLite, LazyFieldLite lazyFieldLite2) {
            this.hashCode = (this.hashCode * 53) + (lazyFieldLite != null ? lazyFieldLite.hashCode() : 37);
            return lazyFieldLite;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T> Internal.ProtobufList<T> visitList(Internal.ProtobufList<T> protobufList, Internal.ProtobufList<T> protobufList2) {
            this.hashCode = (this.hashCode * 53) + protobufList.hashCode();
            return protobufList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public long visitLong(boolean z3, long j4, boolean z4, long j5) {
            this.hashCode = (this.hashCode * 53) + Internal.hashLong(j4);
            return j4;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Internal.LongList visitLongList(Internal.LongList longList, Internal.LongList longList2) {
            this.hashCode = (this.hashCode * 53) + longList.hashCode();
            return longList;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <K, V> MapFieldLite<K, V> visitMap(MapFieldLite<K, V> mapFieldLite, MapFieldLite<K, V> mapFieldLite2) {
            this.hashCode = (this.hashCode * 53) + mapFieldLite.hashCode();
            return mapFieldLite;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public <T extends MessageLite> T visitMessage(T t3, T t4) {
            int i2;
            if (t3 == null) {
                i2 = 37;
            } else if (t3 instanceof GeneratedMessageLite) {
                i2 = ((GeneratedMessageLite) t3).hashCode(this);
            } else {
                i2 = t3.hashCode();
            }
            this.hashCode = (this.hashCode * 53) + i2;
            return t3;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofBoolean(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + Internal.hashBoolean(((Boolean) obj).booleanValue());
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofByteString(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + obj.hashCode();
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofDouble(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + Internal.hashLong(Double.doubleToLongBits(((Double) obj).doubleValue()));
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofFloat(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + Float.floatToIntBits(((Float) obj).floatValue());
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofInt(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + ((Integer) obj).intValue();
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLazyMessage(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + obj.hashCode();
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofLong(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + Internal.hashLong(((Long) obj).longValue());
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofMessage(boolean z3, Object obj, Object obj2) {
            return visitMessage((MessageLite) obj, (MessageLite) obj2);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public void visitOneofNotSet(boolean z3) {
            if (z3) {
                throw new IllegalStateException();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public Object visitOneofString(boolean z3, Object obj, Object obj2) {
            this.hashCode = (this.hashCode * 53) + obj.hashCode();
            return obj;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public String visitString(boolean z3, String str, boolean z4, String str2) {
            this.hashCode = (this.hashCode * 53) + str.hashCode();
            return str;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Visitor
        public UnknownFieldSetLite visitUnknownFields(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
            this.hashCode = (this.hashCode * 53) + unknownFieldSetLite.hashCode();
            return unknownFieldSetLite;
        }

        /* synthetic */ HashCodeVisitor(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> boolean isInitialized(T t3, boolean z3) {
        return t3.dynamicMethod(MethodToInvoke.IS_INITIALIZED, Boolean.valueOf(z3)) != null;
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke) {
        return dynamicMethod(methodToInvoke, null, null);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) dynamicMethod(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // com.google.protobuf.MessageLite
    public final BuilderType newBuilderForType() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    @Override // com.google.protobuf.MessageLite
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
        buildertype.mergeFrom(this);
        return buildertype;
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> void makeImmutable(T t3) {
        t3.dynamicMethod(MethodToInvoke.MAKE_IMMUTABLE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$LongList] */
    public static Internal.LongList mutableCopy(Internal.LongList longList) {
        int size = longList.size();
        return longList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, byteString, extensionRegistryLite));
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean equals(EqualsVisitor equalsVisitor, MessageLite messageLite) {
        if (this == messageLite) {
            return true;
        }
        if (getDefaultInstanceForType().getClass().isInstance(messageLite)) {
            visit(equalsVisitor, (GeneratedMessageLite) messageLite);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t3, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t3, inputStream, extensionRegistryLite));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, byte[] bArr) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, bArr, ExtensionRegistryLite.getEmptyRegistry()));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$FloatList] */
    protected static Internal.FloatList mutableCopy(Internal.FloatList floatList) {
        int size = floatList.size();
        return floatList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, bArr, extensionRegistryLite));
    }

    int hashCode(HashCodeVisitor hashCodeVisitor) {
        if (this.memoizedHashCode == 0) {
            int i2 = hashCodeVisitor.hashCode;
            hashCodeVisitor.hashCode = 0;
            visit(hashCodeVisitor, this);
            this.memoizedHashCode = hashCodeVisitor.hashCode;
            hashCodeVisitor.hashCode = i2;
        }
        return this.memoizedHashCode;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$DoubleList] */
    protected static Internal.DoubleList mutableCopy(Internal.DoubleList doubleList) {
        int size = doubleList.size();
        return doubleList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, CodedInputStream.newInstance(inputStream), ExtensionRegistryLite.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t3, CodedInputStream codedInputStream) throws InvalidProtocolBufferException {
        return (T) parsePartialFrom(t3, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t3, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        try {
            CodedInputStream newCodedInput = byteString.newCodedInput();
            T t4 = (T) parsePartialFrom(t3, newCodedInput, extensionRegistryLite);
            try {
                newCodedInput.checkLastTagWas(0);
                return t4;
            } catch (InvalidProtocolBufferException e4) {
                throw e4.setUnfinishedMessage(t4);
            }
        } catch (InvalidProtocolBufferException e5) {
            throw e5;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$BooleanList] */
    protected static Internal.BooleanList mutableCopy(Internal.BooleanList booleanList) {
        int size = booleanList.size();
        return booleanList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> Internal.ProtobufList<E> mutableCopy(Internal.ProtobufList<E> protobufList) {
        int size = protobufList.size();
        return protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, CodedInputStream.newInstance(inputStream), extensionRegistryLite));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, CodedInputStream codedInputStream) throws InvalidProtocolBufferException {
        return (T) parseFrom(t3, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t3, byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        try {
            CodedInputStream newInstance = CodedInputStream.newInstance(bArr);
            T t4 = (T) parsePartialFrom(t3, newInstance, extensionRegistryLite);
            try {
                newInstance.checkLastTagWas(0);
                return t4;
            } catch (InvalidProtocolBufferException e4) {
                throw e4.setUnfinishedMessage(t4);
            }
        } catch (InvalidProtocolBufferException e5) {
            throw e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t3, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t3, codedInputStream, extensionRegistryLite));
    }
}
