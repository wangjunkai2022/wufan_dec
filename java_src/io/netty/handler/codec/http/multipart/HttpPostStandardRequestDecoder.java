package io.netty.handler.codec.http.multipart;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http.HttpContent;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.LastHttpContent;
import io.netty.handler.codec.http.QueryStringDecoder;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import io.netty.handler.codec.http.multipart.HttpPostRequestDecoder;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes5.dex */
public class HttpPostStandardRequestDecoder implements InterfaceHttpPostRequestDecoder {
    private final List<InterfaceHttpData> bodyListHttpData;
    private int bodyListHttpDataRank;
    private final Map<String, List<InterfaceHttpData>> bodyMapHttpData;
    private final Charset charset;
    private Attribute currentAttribute;
    private HttpPostRequestDecoder.MultiPartStatus currentStatus;
    private boolean destroyed;
    private int discardThreshold;
    private final HttpDataFactory factory;
    private boolean isLastChunk;
    private final HttpRequest request;
    private ByteBuf undecodedChunk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.http.multipart.HttpPostStandardRequestDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus;

        static {
            int[] iArr = new int[HttpPostRequestDecoder.MultiPartStatus.values().length];
            $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus = iArr;
            try {
                iArr[HttpPostRequestDecoder.MultiPartStatus.DISPOSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus[HttpPostRequestDecoder.MultiPartStatus.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HttpPostStandardRequestDecoder(HttpRequest httpRequest) {
        this(new DefaultHttpDataFactory(16384L), httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    private void checkDestroyed() {
        if (this.destroyed) {
            throw new IllegalStateException(HttpPostStandardRequestDecoder.class.getSimpleName() + " was destroyed already");
        }
    }

    private static String decodeAttribute(String str, Charset charset) {
        try {
            return QueryStringDecoder.decodeComponent(str, charset);
        } catch (IllegalArgumentException e4) {
            throw new HttpPostRequestDecoder.ErrorDataDecoderException("Bad string: '" + str + '\'', e4);
        }
    }

    private void parseBody() {
        HttpPostRequestDecoder.MultiPartStatus multiPartStatus = this.currentStatus;
        if (multiPartStatus != HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE && multiPartStatus != HttpPostRequestDecoder.MultiPartStatus.EPILOGUE) {
            parseBodyAttributes();
        } else if (this.isLastChunk) {
            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
        }
    }

    private void parseBodyAttributes() {
        int i2;
        boolean z3;
        Attribute attribute;
        Attribute attribute2;
        if (!this.undecodedChunk.hasArray()) {
            parseBodyAttributesStandard();
            return;
        }
        HttpPostBodyUtil.SeekAheadOptimize seekAheadOptimize = new HttpPostBodyUtil.SeekAheadOptimize(this.undecodedChunk);
        int readerIndex = this.undecodedChunk.readerIndex();
        if (this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.NOTSTARTED) {
            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
        }
        loop0: while (true) {
            i2 = readerIndex;
            while (true) {
                try {
                    int i4 = seekAheadOptimize.pos;
                    z3 = true;
                    if (i4 >= seekAheadOptimize.limit) {
                        break loop0;
                    }
                    byte[] bArr = seekAheadOptimize.bytes;
                    seekAheadOptimize.pos = i4 + 1;
                    char c4 = (char) (bArr[i4] & 255);
                    readerIndex++;
                    int i5 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus[this.currentStatus.ordinal()];
                    if (i5 != 1) {
                        if (i5 != 2) {
                            seekAheadOptimize.setReadPosition(0);
                            break loop0;
                        } else if (c4 == '&') {
                            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                            setFinalBuffer(this.undecodedChunk.copy(i2, (readerIndex - 1) - i2));
                            break;
                        } else if (c4 == '\r') {
                            int i6 = seekAheadOptimize.pos;
                            int i7 = seekAheadOptimize.limit;
                            if (i6 < i7) {
                                byte[] bArr2 = seekAheadOptimize.bytes;
                                seekAheadOptimize.pos = i6 + 1;
                                readerIndex++;
                                if (((char) (bArr2[i6] & 255)) == '\n') {
                                    this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                                    seekAheadOptimize.setReadPosition(0);
                                    setFinalBuffer(this.undecodedChunk.copy(i2, (readerIndex - 2) - i2));
                                } else {
                                    seekAheadOptimize.setReadPosition(0);
                                    throw new HttpPostRequestDecoder.ErrorDataDecoderException("Bad end of line");
                                }
                            } else if (i7 > 0) {
                                readerIndex--;
                            }
                        } else if (c4 == '\n') {
                            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                            seekAheadOptimize.setReadPosition(0);
                            setFinalBuffer(this.undecodedChunk.copy(i2, (readerIndex - 1) - i2));
                            break loop0;
                        }
                    } else if (c4 == '=') {
                        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.FIELD;
                        this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i2, (readerIndex - 1) - i2, this.charset), this.charset));
                        break;
                    } else if (c4 == '&') {
                        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                        Attribute createAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i2, (readerIndex - 1) - i2, this.charset), this.charset));
                        this.currentAttribute = createAttribute;
                        createAttribute.setValue("");
                        addHttpData(this.currentAttribute);
                        this.currentAttribute = null;
                        break;
                    }
                } catch (HttpPostRequestDecoder.ErrorDataDecoderException e4) {
                    e = e4;
                } catch (IOException e5) {
                    e = e5;
                } catch (IllegalArgumentException e6) {
                    e = e6;
                }
            }
        }
        i2 = readerIndex;
        z3 = false;
        if (this.isLastChunk && (attribute2 = this.currentAttribute) != null) {
            if (readerIndex > i2) {
                setFinalBuffer(this.undecodedChunk.copy(i2, readerIndex - i2));
            } else if (!attribute2.isCompleted()) {
                setFinalBuffer(Unpooled.EMPTY_BUFFER);
            }
            try {
                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
            } catch (HttpPostRequestDecoder.ErrorDataDecoderException e7) {
                e = e7;
                i2 = readerIndex;
                this.undecodedChunk.readerIndex(i2);
                throw e;
            } catch (IOException e8) {
                e = e8;
                i2 = readerIndex;
                this.undecodedChunk.readerIndex(i2);
                throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
            } catch (IllegalArgumentException e9) {
                e = e9;
                i2 = readerIndex;
                this.undecodedChunk.readerIndex(i2);
                throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
            }
        } else {
            if (z3 && (attribute = this.currentAttribute) != null && this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.FIELD) {
                attribute.addContent(this.undecodedChunk.copy(i2, readerIndex - i2), false);
            }
            this.undecodedChunk.readerIndex(i2);
        }
        i2 = readerIndex;
        this.undecodedChunk.readerIndex(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ee, code lost:
        if (r9.isLastChunk == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f0, code lost:
        r1 = r9.currentAttribute;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f2, code lost:
        if (r1 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f4, code lost:
        if (r0 <= r2) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f6, code lost:
        setFinalBuffer(r9.undecodedChunk.copy(r2, r0 - r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0106, code lost:
        if (r1.isCompleted() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0108, code lost:
        setFinalBuffer(io.netty.buffer.Unpooled.EMPTY_BUFFER);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010d, code lost:
        r9.currentStatus = io.netty.handler.codec.http.multipart.HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0112, code lost:
        if (r3 == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0114, code lost:
        r1 = r9.currentAttribute;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0116, code lost:
        if (r1 == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (r9.currentStatus != io.netty.handler.codec.http.multipart.HttpPostRequestDecoder.MultiPartStatus.FIELD) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x011e, code lost:
        r1.addContent(r9.undecodedChunk.copy(r2, r0 - r2), false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012a, code lost:
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012b, code lost:
        r9.undecodedChunk.readerIndex(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0130, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0131, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0132, code lost:
        r2 = r0;
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0135, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0136, code lost:
        r2 = r0;
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0139, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013a, code lost:
        r2 = r0;
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013e, code lost:
        r9.undecodedChunk.readerIndex(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0148, code lost:
        throw new io.netty.handler.codec.http.multipart.HttpPostRequestDecoder.ErrorDataDecoderException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014a, code lost:
        r9.undecodedChunk.readerIndex(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0154, code lost:
        throw new io.netty.handler.codec.http.multipart.HttpPostRequestDecoder.ErrorDataDecoderException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0156, code lost:
        r9.undecodedChunk.readerIndex(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015c, code lost:
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseBodyAttributesStandard() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http.multipart.HttpPostStandardRequestDecoder.parseBodyAttributesStandard():void");
    }

    private void setFinalBuffer(ByteBuf byteBuf) throws IOException {
        this.currentAttribute.addContent(byteBuf, true);
        this.currentAttribute.setValue(decodeAttribute(this.currentAttribute.getByteBuf().toString(this.charset), this.charset));
        addHttpData(this.currentAttribute);
        this.currentAttribute = null;
    }

    protected void addHttpData(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData == null) {
            return;
        }
        List<InterfaceHttpData> list = this.bodyMapHttpData.get(interfaceHttpData.getName());
        if (list == null) {
            list = new ArrayList<>(1);
            this.bodyMapHttpData.put(interfaceHttpData.getName(), list);
        }
        list.add(interfaceHttpData);
        this.bodyListHttpData.add(interfaceHttpData);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void cleanFiles() {
        checkDestroyed();
        this.factory.cleanRequestHttpData(this.request);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData currentPartialHttpData() {
        return this.currentAttribute;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void destroy() {
        cleanFiles();
        this.destroyed = true;
        ByteBuf byteBuf = this.undecodedChunk;
        if (byteBuf == null || byteBuf.refCnt() <= 0) {
            return;
        }
        this.undecodedChunk.release();
        this.undecodedChunk = null;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData getBodyHttpData(String str) {
        checkDestroyed();
        if (this.isLastChunk) {
            List<InterfaceHttpData> list = this.bodyMapHttpData.get(str);
            if (list != null) {
                return list.get(0);
            }
            return null;
        }
        throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public List<InterfaceHttpData> getBodyHttpDatas() {
        checkDestroyed();
        if (this.isLastChunk) {
            return this.bodyListHttpData;
        }
        throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public int getDiscardThreshold() {
        return this.discardThreshold;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public boolean hasNext() {
        checkDestroyed();
        if (this.currentStatus != HttpPostRequestDecoder.MultiPartStatus.EPILOGUE || this.bodyListHttpDataRank < this.bodyListHttpData.size()) {
            return !this.bodyListHttpData.isEmpty() && this.bodyListHttpDataRank < this.bodyListHttpData.size();
        }
        throw new HttpPostRequestDecoder.EndOfDataDecoderException();
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public boolean isMultipart() {
        checkDestroyed();
        return false;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData next() {
        checkDestroyed();
        if (hasNext()) {
            List<InterfaceHttpData> list = this.bodyListHttpData;
            int i2 = this.bodyListHttpDataRank;
            this.bodyListHttpDataRank = i2 + 1;
            return list.get(i2);
        }
        return null;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void removeHttpDataFromClean(InterfaceHttpData interfaceHttpData) {
        checkDestroyed();
        this.factory.removeHttpDataFromClean(this.request, interfaceHttpData);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void setDiscardThreshold(int i2) {
        this.discardThreshold = ObjectUtil.checkPositiveOrZero(i2, "discardThreshold");
    }

    public HttpPostStandardRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest) {
        this(httpDataFactory, httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public HttpPostStandardRequestDecoder offer(HttpContent httpContent) {
        checkDestroyed();
        ByteBuf content = httpContent.content();
        ByteBuf byteBuf = this.undecodedChunk;
        if (byteBuf == null) {
            this.undecodedChunk = content.copy();
        } else {
            byteBuf.writeBytes(content);
        }
        if (httpContent instanceof LastHttpContent) {
            this.isLastChunk = true;
        }
        parseBody();
        ByteBuf byteBuf2 = this.undecodedChunk;
        if (byteBuf2 != null && byteBuf2.writerIndex() > this.discardThreshold) {
            this.undecodedChunk.discardReadBytes();
        }
        return this;
    }

    public HttpPostStandardRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, Charset charset) {
        this.bodyListHttpData = new ArrayList();
        this.bodyMapHttpData = new TreeMap(CaseIgnoringComparator.INSTANCE);
        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.NOTSTARTED;
        this.discardThreshold = 10485760;
        this.request = (HttpRequest) ObjectUtil.checkNotNull(httpRequest, "request");
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.factory = (HttpDataFactory) ObjectUtil.checkNotNull(httpDataFactory, "factory");
        try {
            if (httpRequest instanceof HttpContent) {
                offer((HttpContent) httpRequest);
            } else {
                this.undecodedChunk = Unpooled.buffer();
                parseBody();
            }
        } catch (Throwable th) {
            destroy();
            PlatformDependent.throwException(th);
        }
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public List<InterfaceHttpData> getBodyHttpDatas(String str) {
        checkDestroyed();
        if (this.isLastChunk) {
            return this.bodyMapHttpData.get(str);
        }
        throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
    }
}
