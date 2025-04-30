package io.netty.handler.codec.http.multipart;

import com.facebook.common.util.f;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.DefaultHttpContent;
import io.netty.handler.codec.http.EmptyHttpHeaders;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http.HttpContent;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.handler.codec.http.LastHttpContent;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import io.netty.handler.stream.ChunkedInput;
import io.netty.util.AsciiString;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class HttpPostRequestEncoder implements ChunkedInput<HttpContent> {
    private static final Map.Entry[] percentEncodings = {new AbstractMap.SimpleImmutableEntry(Pattern.compile("\\*"), "%2A"), new AbstractMap.SimpleImmutableEntry(Pattern.compile("\\+"), "%20"), new AbstractMap.SimpleImmutableEntry(Pattern.compile("~"), "%7E")};
    private final List<InterfaceHttpData> bodyListDatas;
    private final Charset charset;
    private ByteBuf currentBuffer;
    private InterfaceHttpData currentData;
    private FileUpload currentFileUpload;
    private boolean duringMixedMode;
    private final EncoderMode encoderMode;
    private final HttpDataFactory factory;
    private long globalBodySize;
    private long globalProgress;
    private boolean headerFinalized;
    private boolean isChunked;
    private boolean isKey;
    private boolean isLastChunk;
    private boolean isLastChunkSent;
    private final boolean isMultipart;
    private ListIterator<InterfaceHttpData> iterator;
    String multipartDataBoundary;
    final List<InterfaceHttpData> multipartHttpDatas;
    String multipartMixedBoundary;
    private final HttpRequest request;

    /* loaded from: classes5.dex */
    public enum EncoderMode {
        RFC1738,
        RFC3986,
        HTML5
    }

    /* loaded from: classes5.dex */
    public static class ErrorDataEncoderException extends Exception {
        private static final long serialVersionUID = 5020247425493164465L;

        public ErrorDataEncoderException() {
        }

        public ErrorDataEncoderException(String str) {
            super(str);
        }

        public ErrorDataEncoderException(Throwable th) {
            super(th);
        }

        public ErrorDataEncoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes5.dex */
    private static final class WrappedFullHttpRequest extends WrappedHttpRequest implements FullHttpRequest {
        private final HttpContent content;

        @Override // io.netty.buffer.ByteBufHolder
        public ByteBuf content() {
            return this.content.content();
        }

        @Override // io.netty.util.ReferenceCounted
        public int refCnt() {
            return this.content.refCnt();
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release() {
            return this.content.release();
        }

        @Override // io.netty.handler.codec.http.LastHttpContent
        public HttpHeaders trailingHeaders() {
            HttpContent httpContent = this.content;
            if (httpContent instanceof LastHttpContent) {
                return ((LastHttpContent) httpContent).trailingHeaders();
            }
            return EmptyHttpHeaders.INSTANCE;
        }

        private WrappedFullHttpRequest(HttpRequest httpRequest, HttpContent httpContent) {
            super(httpRequest);
            this.content = httpContent;
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release(int i2) {
            return this.content.release(i2);
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setMethod(HttpMethod httpMethod) {
            super.setMethod(httpMethod);
            return this;
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setUri(String str) {
            super.setUri(str);
            return this;
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setProtocolVersion(HttpVersion httpVersion) {
            super.setProtocolVersion(httpVersion);
            return this;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest copy() {
            return replace(content().copy());
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest duplicate() {
            return replace(content().duplicate());
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest replace(ByteBuf byteBuf) {
            DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(protocolVersion(), method(), uri(), byteBuf);
            defaultFullHttpRequest.headers().set(headers());
            defaultFullHttpRequest.trailingHeaders().set(trailingHeaders());
            return defaultFullHttpRequest;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest retainedDuplicate() {
            return replace(content().retainedDuplicate());
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest retain(int i2) {
            this.content.retain(i2);
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest touch() {
            this.content.touch();
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest retain() {
            this.content.retain();
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest touch(Object obj) {
            this.content.touch(obj);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class WrappedHttpRequest implements HttpRequest {
        private final HttpRequest request;

        WrappedHttpRequest(HttpRequest httpRequest) {
            this.request = httpRequest;
        }

        @Override // io.netty.handler.codec.DecoderResultProvider
        public DecoderResult decoderResult() {
            return this.request.decoderResult();
        }

        @Override // io.netty.handler.codec.http.HttpObject
        @Deprecated
        public DecoderResult getDecoderResult() {
            return this.request.getDecoderResult();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public HttpMethod getMethod() {
            return this.request.method();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpVersion getProtocolVersion() {
            return this.request.protocolVersion();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public String getUri() {
            return this.request.uri();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpHeaders headers() {
            return this.request.headers();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public HttpMethod method() {
            return this.request.method();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpVersion protocolVersion() {
            return this.request.protocolVersion();
        }

        @Override // io.netty.handler.codec.DecoderResultProvider
        public void setDecoderResult(DecoderResult decoderResult) {
            this.request.setDecoderResult(decoderResult);
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setMethod(HttpMethod httpMethod) {
            this.request.setMethod(httpMethod);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setUri(String str) {
            this.request.setUri(str);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public String uri() {
            return this.request.uri();
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setProtocolVersion(HttpVersion httpVersion) {
            this.request.setProtocolVersion(httpVersion);
            return this;
        }
    }

    public HttpPostRequestEncoder(HttpRequest httpRequest, boolean z3) throws ErrorDataEncoderException {
        this(new DefaultHttpDataFactory(16384L), httpRequest, z3, HttpConstants.DEFAULT_CHARSET, EncoderMode.RFC1738);
    }

    private int calculateRemainingSize() {
        ByteBuf byteBuf = this.currentBuffer;
        return byteBuf != null ? HttpPostBodyUtil.chunkSize - byteBuf.readableBytes() : HttpPostBodyUtil.chunkSize;
    }

    private String encodeAttribute(String str, Charset charset) throws ErrorDataEncoderException {
        Map.Entry[] entryArr;
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, charset.name());
            if (this.encoderMode == EncoderMode.RFC3986) {
                for (Map.Entry entry : percentEncodings) {
                    encode = ((Pattern) entry.getKey()).matcher(encode).replaceAll((String) entry.getValue());
                }
            }
            return encode;
        } catch (UnsupportedEncodingException e4) {
            throw new ErrorDataEncoderException(charset.name(), e4);
        }
    }

    private HttpContent encodeNextChunkMultipart(int i2) throws ErrorDataEncoderException {
        ByteBuf chunk;
        InterfaceHttpData interfaceHttpData = this.currentData;
        if (interfaceHttpData == null) {
            return null;
        }
        if (interfaceHttpData instanceof InternalAttribute) {
            chunk = ((InternalAttribute) interfaceHttpData).toByteBuf();
            this.currentData = null;
        } else {
            try {
                chunk = ((HttpData) interfaceHttpData).getChunk(i2);
                if (chunk.capacity() == 0) {
                    this.currentData = null;
                    return null;
                }
            } catch (IOException e4) {
                throw new ErrorDataEncoderException(e4);
            }
        }
        ByteBuf byteBuf = this.currentBuffer;
        if (byteBuf == null) {
            this.currentBuffer = chunk;
        } else {
            this.currentBuffer = Unpooled.wrappedBuffer(byteBuf, chunk);
        }
        if (this.currentBuffer.readableBytes() < 8096) {
            this.currentData = null;
            return null;
        }
        return new DefaultHttpContent(fillByteBuf());
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.netty.handler.codec.http.HttpContent encodeNextChunkUrlEncoded(int r11) throws io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.ErrorDataEncoderException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.encodeNextChunkUrlEncoded(int):io.netty.handler.codec.http.HttpContent");
    }

    private ByteBuf fillByteBuf() {
        if (this.currentBuffer.readableBytes() > 8096) {
            return this.currentBuffer.readRetainedSlice(HttpPostBodyUtil.chunkSize);
        }
        ByteBuf byteBuf = this.currentBuffer;
        this.currentBuffer = null;
        return byteBuf;
    }

    private static String getNewMultipartDelimiter() {
        return Long.toHexString(PlatformDependent.threadLocalRandom().nextLong());
    }

    private void initDataMultipart() {
        this.multipartDataBoundary = getNewMultipartDelimiter();
    }

    private void initMixedMultipart() {
        this.multipartMixedBoundary = getNewMultipartDelimiter();
    }

    private HttpContent lastChunk() {
        this.isLastChunk = true;
        ByteBuf byteBuf = this.currentBuffer;
        if (byteBuf == null) {
            this.isLastChunkSent = true;
            return LastHttpContent.EMPTY_LAST_CONTENT;
        }
        this.currentBuffer = null;
        return new DefaultHttpContent(byteBuf);
    }

    private HttpContent nextChunk() throws ErrorDataEncoderException {
        HttpContent encodeNextChunkUrlEncoded;
        HttpContent encodeNextChunkUrlEncoded2;
        if (this.isLastChunk) {
            this.isLastChunkSent = true;
            return LastHttpContent.EMPTY_LAST_CONTENT;
        }
        int calculateRemainingSize = calculateRemainingSize();
        if (calculateRemainingSize <= 0) {
            return new DefaultHttpContent(fillByteBuf());
        }
        if (this.currentData != null) {
            if (this.isMultipart) {
                encodeNextChunkUrlEncoded2 = encodeNextChunkMultipart(calculateRemainingSize);
            } else {
                encodeNextChunkUrlEncoded2 = encodeNextChunkUrlEncoded(calculateRemainingSize);
            }
            if (encodeNextChunkUrlEncoded2 != null) {
                return encodeNextChunkUrlEncoded2;
            }
            calculateRemainingSize = calculateRemainingSize();
        }
        if (!this.iterator.hasNext()) {
            return lastChunk();
        }
        while (calculateRemainingSize > 0 && this.iterator.hasNext()) {
            this.currentData = this.iterator.next();
            if (this.isMultipart) {
                encodeNextChunkUrlEncoded = encodeNextChunkMultipart(calculateRemainingSize);
            } else {
                encodeNextChunkUrlEncoded = encodeNextChunkUrlEncoded(calculateRemainingSize);
            }
            if (encodeNextChunkUrlEncoded != null) {
                return encodeNextChunkUrlEncoded;
            }
            calculateRemainingSize = calculateRemainingSize();
        }
        return lastChunk();
    }

    public void addBodyAttribute(String str, String str2) throws ErrorDataEncoderException {
        if (str2 == null) {
            str2 = "";
        }
        addBodyHttpData(this.factory.createAttribute(this.request, (String) ObjectUtil.checkNotNull(str, "name"), str2));
    }

    public void addBodyFileUpload(String str, File file, String str2, boolean z3) throws ErrorDataEncoderException {
        addBodyFileUpload(str, file.getName(), file, str2, z3);
    }

    public void addBodyFileUploads(String str, File[] fileArr, String[] strArr, boolean[] zArr) throws ErrorDataEncoderException {
        if (fileArr.length != strArr.length && fileArr.length != zArr.length) {
            throw new IllegalArgumentException("Different array length");
        }
        for (int i2 = 0; i2 < fileArr.length; i2++) {
            addBodyFileUpload(str, fileArr[i2], strArr[i2], zArr[i2]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addBodyHttpData(InterfaceHttpData interfaceHttpData) throws ErrorDataEncoderException {
        String str;
        String str2;
        FileUpload fileUpload;
        boolean z3;
        HttpPostBodyUtil.TransferEncodingMechanism transferEncodingMechanism;
        Charset charset;
        if (!this.headerFinalized) {
            this.bodyListDatas.add(ObjectUtil.checkNotNull(interfaceHttpData, "data"));
            if (!this.isMultipart) {
                if (interfaceHttpData instanceof Attribute) {
                    Attribute attribute = (Attribute) interfaceHttpData;
                    try {
                        Attribute createAttribute = this.factory.createAttribute(this.request, encodeAttribute(attribute.getName(), this.charset), encodeAttribute(attribute.getValue(), this.charset));
                        this.multipartHttpDatas.add(createAttribute);
                        this.globalBodySize += createAttribute.getName().length() + 1 + createAttribute.length() + 1;
                        return;
                    } catch (IOException e4) {
                        throw new ErrorDataEncoderException(e4);
                    }
                } else if (interfaceHttpData instanceof FileUpload) {
                    FileUpload fileUpload2 = (FileUpload) interfaceHttpData;
                    Attribute createAttribute2 = this.factory.createAttribute(this.request, encodeAttribute(fileUpload2.getName(), this.charset), encodeAttribute(fileUpload2.getFilename(), this.charset));
                    this.multipartHttpDatas.add(createAttribute2);
                    this.globalBodySize += createAttribute2.getName().length() + 1 + createAttribute2.length() + 1;
                    return;
                } else {
                    return;
                }
            }
            String str3 = "=\"";
            if (interfaceHttpData instanceof Attribute) {
                if (this.duringMixedMode) {
                    InternalAttribute internalAttribute = new InternalAttribute(this.charset);
                    internalAttribute.addValue("\r\n--" + this.multipartMixedBoundary + "--");
                    this.multipartHttpDatas.add(internalAttribute);
                    this.multipartMixedBoundary = null;
                    this.currentFileUpload = null;
                    this.duringMixedMode = false;
                }
                InternalAttribute internalAttribute2 = new InternalAttribute(this.charset);
                if (!this.multipartHttpDatas.isEmpty()) {
                    internalAttribute2.addValue("\r\n");
                }
                internalAttribute2.addValue("--" + this.multipartDataBoundary + "\r\n");
                Attribute attribute2 = (Attribute) interfaceHttpData;
                internalAttribute2.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + "=\"" + attribute2.getName() + "\"\r\n");
                StringBuilder sb = new StringBuilder();
                sb.append((Object) HttpHeaderNames.CONTENT_LENGTH);
                sb.append(": ");
                sb.append(attribute2.length());
                sb.append("\r\n");
                internalAttribute2.addValue(sb.toString());
                if (attribute2.getCharset() != null) {
                    internalAttribute2.addValue(((Object) HttpHeaderNames.CONTENT_TYPE) + ": " + HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE + "; " + ((Object) HttpHeaderValues.CHARSET) + '=' + charset.name() + "\r\n");
                }
                internalAttribute2.addValue("\r\n");
                this.multipartHttpDatas.add(internalAttribute2);
                this.multipartHttpDatas.add(interfaceHttpData);
                this.globalBodySize += attribute2.length() + internalAttribute2.size();
                return;
            } else if (interfaceHttpData instanceof FileUpload) {
                FileUpload fileUpload3 = (FileUpload) interfaceHttpData;
                InternalAttribute internalAttribute3 = new InternalAttribute(this.charset);
                if (!this.multipartHttpDatas.isEmpty()) {
                    internalAttribute3.addValue("\r\n");
                }
                if (this.duringMixedMode) {
                    FileUpload fileUpload4 = this.currentFileUpload;
                    if (fileUpload4 == null || !fileUpload4.getName().equals(fileUpload3.getName())) {
                        internalAttribute3.addValue("--" + this.multipartMixedBoundary + "--");
                        this.multipartHttpDatas.add(internalAttribute3);
                        this.multipartMixedBoundary = null;
                        internalAttribute3 = new InternalAttribute(this.charset);
                        internalAttribute3.addValue("\r\n");
                        this.currentFileUpload = fileUpload3;
                        this.duringMixedMode = false;
                        str = "\"\r\n";
                        str2 = "\r\n\r\n";
                        z3 = false;
                    } else {
                        str = "\"\r\n";
                        str2 = "\r\n\r\n";
                        z3 = true;
                    }
                } else if (this.encoderMode != EncoderMode.HTML5 && (fileUpload = this.currentFileUpload) != null && fileUpload.getName().equals(fileUpload3.getName())) {
                    initMixedMultipart();
                    List<InterfaceHttpData> list = this.multipartHttpDatas;
                    InternalAttribute internalAttribute4 = (InternalAttribute) list.get(list.size() - 2);
                    this.globalBodySize -= internalAttribute4.size();
                    StringBuilder sb2 = new StringBuilder(this.multipartDataBoundary.length() + 139 + (this.multipartMixedBoundary.length() * 2) + fileUpload3.getFilename().length() + fileUpload3.getName().length());
                    sb2.append("--");
                    sb2.append(this.multipartDataBoundary);
                    sb2.append("\r\n");
                    AsciiString asciiString = HttpHeaderNames.CONTENT_DISPOSITION;
                    sb2.append((CharSequence) asciiString);
                    sb2.append(": ");
                    sb2.append((CharSequence) HttpHeaderValues.FORM_DATA);
                    sb2.append("; ");
                    sb2.append((CharSequence) HttpHeaderValues.NAME);
                    str3 = "=\"";
                    sb2.append(str3);
                    sb2.append(fileUpload3.getName());
                    sb2.append("\"\r\n");
                    sb2.append((CharSequence) HttpHeaderNames.CONTENT_TYPE);
                    sb2.append(": ");
                    sb2.append((CharSequence) HttpHeaderValues.MULTIPART_MIXED);
                    sb2.append("; ");
                    sb2.append((CharSequence) HttpHeaderValues.BOUNDARY);
                    sb2.append('=');
                    sb2.append(this.multipartMixedBoundary);
                    sb2.append("\r\n\r\n");
                    sb2.append("--");
                    sb2.append(this.multipartMixedBoundary);
                    sb2.append("\r\n");
                    sb2.append((CharSequence) asciiString);
                    sb2.append(": ");
                    sb2.append((CharSequence) HttpHeaderValues.ATTACHMENT);
                    if (!fileUpload3.getFilename().isEmpty()) {
                        sb2.append("; ");
                        sb2.append((CharSequence) HttpHeaderValues.FILENAME);
                        sb2.append(str3);
                        sb2.append(this.currentFileUpload.getFilename());
                        sb2.append('\"');
                    }
                    sb2.append("\r\n");
                    internalAttribute4.setValue(sb2.toString(), 1);
                    internalAttribute4.setValue("", 2);
                    str2 = "\r\n\r\n";
                    str = "\"\r\n";
                    this.globalBodySize += internalAttribute4.size();
                    z3 = true;
                    this.duringMixedMode = true;
                } else {
                    str = "\"\r\n";
                    str2 = "\r\n\r\n";
                    this.currentFileUpload = fileUpload3;
                    this.duringMixedMode = false;
                    z3 = false;
                }
                if (z3) {
                    internalAttribute3.addValue("--" + this.multipartMixedBoundary + "\r\n");
                    if (fileUpload3.getFilename().isEmpty()) {
                        internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.ATTACHMENT) + "\r\n");
                    } else {
                        internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.ATTACHMENT) + "; " + ((Object) HttpHeaderValues.FILENAME) + str3 + fileUpload3.getFilename() + str);
                    }
                } else {
                    String str4 = str;
                    internalAttribute3.addValue("--" + this.multipartDataBoundary + "\r\n");
                    if (fileUpload3.getFilename().isEmpty()) {
                        internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + str3 + fileUpload3.getName() + str4);
                    } else {
                        internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + str3 + fileUpload3.getName() + "\"; " + ((Object) HttpHeaderValues.FILENAME) + str3 + fileUpload3.getFilename() + str4);
                    }
                }
                internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_LENGTH) + ": " + fileUpload3.length() + "\r\n");
                StringBuilder sb3 = new StringBuilder();
                sb3.append((Object) HttpHeaderNames.CONTENT_TYPE);
                sb3.append(": ");
                sb3.append(fileUpload3.getContentType());
                internalAttribute3.addValue(sb3.toString());
                String contentTransferEncoding = fileUpload3.getContentTransferEncoding();
                if (contentTransferEncoding != null) {
                    if (contentTransferEncoding.equals(HttpPostBodyUtil.TransferEncodingMechanism.BINARY.value())) {
                        internalAttribute3.addValue("\r\n" + ((Object) HttpHeaderNames.CONTENT_TRANSFER_ENCODING) + ": " + transferEncodingMechanism.value() + str2);
                        this.multipartHttpDatas.add(internalAttribute3);
                        this.multipartHttpDatas.add(interfaceHttpData);
                        this.globalBodySize += fileUpload3.length() + internalAttribute3.size();
                        return;
                    }
                }
                if (fileUpload3.getCharset() != null) {
                    internalAttribute3.addValue("; " + ((Object) HttpHeaderValues.CHARSET) + '=' + fileUpload3.getCharset().name() + str2);
                } else {
                    internalAttribute3.addValue(str2);
                }
                this.multipartHttpDatas.add(internalAttribute3);
                this.multipartHttpDatas.add(interfaceHttpData);
                this.globalBodySize += fileUpload3.length() + internalAttribute3.size();
                return;
            } else {
                return;
            }
        }
        throw new ErrorDataEncoderException("Cannot add value once finalized");
    }

    public void cleanFiles() {
        this.factory.cleanRequestHttpData(this.request);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
    }

    public HttpRequest finalizeRequest() throws ErrorDataEncoderException {
        if (!this.headerFinalized) {
            if (this.isMultipart) {
                InternalAttribute internalAttribute = new InternalAttribute(this.charset);
                if (this.duringMixedMode) {
                    internalAttribute.addValue("\r\n--" + this.multipartMixedBoundary + "--");
                }
                internalAttribute.addValue("\r\n--" + this.multipartDataBoundary + "--\r\n");
                this.multipartHttpDatas.add(internalAttribute);
                this.multipartMixedBoundary = null;
                this.currentFileUpload = null;
                this.duringMixedMode = false;
                this.globalBodySize += internalAttribute.size();
            }
            this.headerFinalized = true;
            HttpHeaders headers = this.request.headers();
            AsciiString asciiString = HttpHeaderNames.CONTENT_TYPE;
            List<String> all = headers.getAll(asciiString);
            List<String> all2 = headers.getAll(HttpHeaderNames.TRANSFER_ENCODING);
            if (all != null) {
                headers.remove(asciiString);
                for (String str : all) {
                    String lowerCase = str.toLowerCase();
                    if (!lowerCase.startsWith(HttpHeaderValues.MULTIPART_FORM_DATA.toString()) && !lowerCase.startsWith(HttpHeaderValues.APPLICATION_X_WWW_FORM_URLENCODED.toString())) {
                        headers.add(HttpHeaderNames.CONTENT_TYPE, str);
                    }
                }
            }
            if (this.isMultipart) {
                headers.add(HttpHeaderNames.CONTENT_TYPE, ((Object) HttpHeaderValues.MULTIPART_FORM_DATA) + "; " + ((Object) HttpHeaderValues.BOUNDARY) + '=' + this.multipartDataBoundary);
            } else {
                headers.add(HttpHeaderNames.CONTENT_TYPE, HttpHeaderValues.APPLICATION_X_WWW_FORM_URLENCODED);
            }
            long j4 = this.globalBodySize;
            if (!this.isMultipart) {
                j4--;
            }
            this.iterator = this.multipartHttpDatas.listIterator();
            headers.set(HttpHeaderNames.CONTENT_LENGTH, String.valueOf(j4));
            if (j4 <= 8096 && !this.isMultipart) {
                HttpContent nextChunk = nextChunk();
                HttpRequest httpRequest = this.request;
                if (httpRequest instanceof FullHttpRequest) {
                    FullHttpRequest fullHttpRequest = (FullHttpRequest) httpRequest;
                    ByteBuf content = nextChunk.content();
                    if (fullHttpRequest.content() != content) {
                        fullHttpRequest.content().clear().writeBytes(content);
                        content.release();
                    }
                    return fullHttpRequest;
                }
                return new WrappedFullHttpRequest(httpRequest, nextChunk);
            }
            this.isChunked = true;
            if (all2 != null) {
                headers.remove(HttpHeaderNames.TRANSFER_ENCODING);
                for (String str2 : all2) {
                    if (!HttpHeaderValues.CHUNKED.contentEqualsIgnoreCase(str2)) {
                        headers.add(HttpHeaderNames.TRANSFER_ENCODING, str2);
                    }
                }
            }
            HttpUtil.setTransferEncodingChunked(this.request, true);
            return new WrappedHttpRequest(this.request);
        }
        throw new ErrorDataEncoderException("Header already encoded");
    }

    public List<InterfaceHttpData> getBodyListAttributes() {
        return this.bodyListDatas;
    }

    public boolean isChunked() {
        return this.isChunked;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        return this.isLastChunkSent;
    }

    public boolean isMultipart() {
        return this.isMultipart;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long length() {
        return this.isMultipart ? this.globalBodySize : this.globalBodySize - 1;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long progress() {
        return this.globalProgress;
    }

    public void setBodyHttpDatas(List<InterfaceHttpData> list) throws ErrorDataEncoderException {
        ObjectUtil.checkNotNull(list, "datas");
        this.globalBodySize = 0L;
        this.bodyListDatas.clear();
        this.currentFileUpload = null;
        this.duringMixedMode = false;
        this.multipartHttpDatas.clear();
        for (InterfaceHttpData interfaceHttpData : list) {
            addBodyHttpData(interfaceHttpData);
        }
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z3) throws ErrorDataEncoderException {
        this(httpDataFactory, httpRequest, z3, HttpConstants.DEFAULT_CHARSET, EncoderMode.RFC1738);
    }

    public void addBodyFileUpload(String str, String str2, File file, String str3, boolean z3) throws ErrorDataEncoderException {
        ObjectUtil.checkNotNull(str, "name");
        ObjectUtil.checkNotNull(file, f.f11767c);
        if (str2 == null) {
            str2 = "";
        }
        String str4 = str2;
        if (str3 == null) {
            str3 = z3 ? HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE : HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
        }
        FileUpload createFileUpload = this.factory.createFileUpload(this.request, str, str4, str3, z3 ? null : HttpPostBodyUtil.TransferEncodingMechanism.BINARY.value(), null, file.length());
        try {
            createFileUpload.setContent(file);
            addBodyHttpData(createFileUpload);
        } catch (IOException e4) {
            throw new ErrorDataEncoderException(e4);
        }
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z3, Charset charset, EncoderMode encoderMode) throws ErrorDataEncoderException {
        this.isKey = true;
        this.request = (HttpRequest) ObjectUtil.checkNotNull(httpRequest, "request");
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.factory = (HttpDataFactory) ObjectUtil.checkNotNull(httpDataFactory, "factory");
        if (!HttpMethod.TRACE.equals(httpRequest.method())) {
            this.bodyListDatas = new ArrayList();
            this.isLastChunk = false;
            this.isLastChunkSent = false;
            this.isMultipart = z3;
            this.multipartHttpDatas = new ArrayList();
            this.encoderMode = encoderMode;
            if (z3) {
                initDataMultipart();
                return;
            }
            return;
        }
        throw new ErrorDataEncoderException("Cannot create a Encoder if request is a TRACE");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public HttpContent readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    public HttpContent readChunk(ByteBufAllocator byteBufAllocator) throws Exception {
        if (this.isLastChunkSent) {
            return null;
        }
        HttpContent nextChunk = nextChunk();
        this.globalProgress += nextChunk.content().readableBytes();
        return nextChunk;
    }
}
