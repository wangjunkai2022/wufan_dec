package com.papa91.battle.protocol;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class BattleTitle extends GeneratedMessageLite<BattleTitle, Builder> implements BattleTitleOrBuilder, Serializable {
    public static final int BACKGROUDCOLOR_FIELD_NUMBER = 2;
    private static final BattleTitle DEFAULT_INSTANCE;
    private static volatile Parser<BattleTitle> PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private String title_ = "";
    private String backgroudColor_ = "";

    /* renamed from: com.papa91.battle.protocol.BattleTitle$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.IS_INITIALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.MAKE_IMMUTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.VISIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.MERGE_FROM_STREAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<BattleTitle, Builder> implements BattleTitleOrBuilder {
        /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder clearBackgroudColor() {
            copyOnWrite();
            ((BattleTitle) this.instance).clearBackgroudColor();
            return this;
        }

        public Builder clearTitle() {
            copyOnWrite();
            ((BattleTitle) this.instance).clearTitle();
            return this;
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public String getBackgroudColor() {
            return ((BattleTitle) this.instance).getBackgroudColor();
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public ByteString getBackgroudColorBytes() {
            return ((BattleTitle) this.instance).getBackgroudColorBytes();
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public String getTitle() {
            return ((BattleTitle) this.instance).getTitle();
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public ByteString getTitleBytes() {
            return ((BattleTitle) this.instance).getTitleBytes();
        }

        public Builder setBackgroudColor(String str) {
            copyOnWrite();
            ((BattleTitle) this.instance).setBackgroudColor(str);
            return this;
        }

        public Builder setBackgroudColorBytes(ByteString byteString) {
            copyOnWrite();
            ((BattleTitle) this.instance).setBackgroudColorBytes(byteString);
            return this;
        }

        public Builder setTitle(String str) {
            copyOnWrite();
            ((BattleTitle) this.instance).setTitle(str);
            return this;
        }

        public Builder setTitleBytes(ByteString byteString) {
            copyOnWrite();
            ((BattleTitle) this.instance).setTitleBytes(byteString);
            return this;
        }

        private Builder() {
            super(BattleTitle.DEFAULT_INSTANCE);
        }
    }

    static {
        BattleTitle battleTitle = new BattleTitle();
        DEFAULT_INSTANCE = battleTitle;
        battleTitle.makeImmutable();
    }

    private BattleTitle() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBackgroudColor() {
        this.backgroudColor_ = getDefaultInstance().getBackgroudColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTitle() {
        this.title_ = getDefaultInstance().getTitle();
    }

    public static BattleTitle getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BattleTitle parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BattleTitle parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Parser<BattleTitle> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackgroudColor(String str) {
        Objects.requireNonNull(str);
        this.backgroudColor_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBackgroudColorBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.backgroudColor_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitle(String str) {
        Objects.requireNonNull(str);
        this.title_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitleBytes(ByteString byteString) {
        Objects.requireNonNull(byteString);
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.title_ = byteString.toStringUtf8();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new BattleTitle();
            case 2:
                return DEFAULT_INSTANCE;
            case 3:
                return null;
            case 4:
                return new Builder(null);
            case 5:
                GeneratedMessageLite.Visitor visitor = (GeneratedMessageLite.Visitor) obj;
                BattleTitle battleTitle = (BattleTitle) obj2;
                this.title_ = visitor.visitString(!this.title_.isEmpty(), this.title_, !battleTitle.title_.isEmpty(), battleTitle.title_);
                this.backgroudColor_ = visitor.visitString(!this.backgroudColor_.isEmpty(), this.backgroudColor_, true ^ battleTitle.backgroudColor_.isEmpty(), battleTitle.backgroudColor_);
                GeneratedMessageLite.MergeFromVisitor mergeFromVisitor = GeneratedMessageLite.MergeFromVisitor.INSTANCE;
                return this;
            case 6:
                CodedInputStream codedInputStream = (CodedInputStream) obj;
                ExtensionRegistryLite extensionRegistryLite = (ExtensionRegistryLite) obj2;
                boolean z3 = false;
                while (!z3) {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 18) {
                                if (!codedInputStream.skipField(readTag)) {
                                }
                            } else {
                                this.backgroudColor_ = codedInputStream.readStringRequireUtf8();
                            }
                        }
                        z3 = true;
                    } catch (InvalidProtocolBufferException e4) {
                        throw new RuntimeException(e4.setUnfinishedMessage(this));
                    } catch (IOException e5) {
                        throw new RuntimeException(new InvalidProtocolBufferException(e5.getMessage()).setUnfinishedMessage(this));
                    }
                }
                break;
            case 7:
                break;
            case 8:
                if (PARSER == null) {
                    synchronized (BattleTitle.class) {
                        if (PARSER == null) {
                            PARSER = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                        }
                    }
                }
                return PARSER;
            default:
                throw new UnsupportedOperationException();
        }
        return DEFAULT_INSTANCE;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public String getBackgroudColor() {
        return this.backgroudColor_;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public ByteString getBackgroudColorBytes() {
        return ByteString.copyFromUtf8(this.backgroudColor_);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = this.title_.isEmpty() ? 0 : 0 + CodedOutputStream.computeStringSize(1, getTitle());
        if (!this.backgroudColor_.isEmpty()) {
            computeStringSize += CodedOutputStream.computeStringSize(2, getBackgroudColor());
        }
        this.memoizedSerializedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public String getTitle() {
        return this.title_;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public ByteString getTitleBytes() {
        return ByteString.copyFromUtf8(this.title_);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.title_.isEmpty()) {
            codedOutputStream.writeString(1, getTitle());
        }
        if (this.backgroudColor_.isEmpty()) {
            return;
        }
        codedOutputStream.writeString(2, getBackgroudColor());
    }

    public static Builder newBuilder(BattleTitle battleTitle) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom((Builder) battleTitle);
    }

    public static BattleTitle parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BattleTitle parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(InputStream inputStream) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BattleTitle parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BattleTitle parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
