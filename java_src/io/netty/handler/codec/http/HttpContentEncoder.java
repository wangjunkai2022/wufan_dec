package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.MessageToMessageCodec;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import org.apache.http.client.methods.HttpHeadHC4;
/* loaded from: classes5.dex */
public abstract class HttpContentEncoder extends MessageToMessageCodec<HttpRequest, HttpObject> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private EmbeddedChannel encoder;
    private static final CharSequence ZERO_LENGTH_HEAD = HttpHeadHC4.METHOD_NAME;
    private static final CharSequence ZERO_LENGTH_CONNECT = "CONNECT";
    private static final int CONTINUE_CODE = HttpResponseStatus.CONTINUE.code();
    private final Queue<CharSequence> acceptEncodingQueue = new ArrayDeque();
    private State state = State.AWAIT_HEADERS;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.http.HttpContentEncoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State = iArr;
            try {
                iArr[State.AWAIT_HEADERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State[State.AWAIT_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State[State.PASS_THROUGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class Result {
        private final EmbeddedChannel contentEncoder;
        private final String targetContentEncoding;

        public Result(String str, EmbeddedChannel embeddedChannel) {
            this.targetContentEncoding = (String) ObjectUtil.checkNotNull(str, "targetContentEncoding");
            this.contentEncoder = (EmbeddedChannel) ObjectUtil.checkNotNull(embeddedChannel, "contentEncoder");
        }

        public EmbeddedChannel contentEncoder() {
            return this.contentEncoder;
        }

        public String targetContentEncoding() {
            return this.targetContentEncoding;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum State {
        PASS_THROUGH,
        AWAIT_HEADERS,
        AWAIT_CONTENT
    }

    private void cleanup() {
        EmbeddedChannel embeddedChannel = this.encoder;
        if (embeddedChannel != null) {
            embeddedChannel.finishAndReleaseAll();
            this.encoder = null;
        }
    }

    private void cleanupSafely(ChannelHandlerContext channelHandlerContext) {
        try {
            cleanup();
        } catch (Throwable th) {
            channelHandlerContext.fireExceptionCaught(th);
        }
    }

    private boolean encodeContent(HttpContent httpContent, List<Object> list) {
        encode(httpContent.content(), list);
        if (httpContent instanceof LastHttpContent) {
            finishEncode(list);
            HttpHeaders trailingHeaders = ((LastHttpContent) httpContent).trailingHeaders();
            if (trailingHeaders.isEmpty()) {
                list.add(LastHttpContent.EMPTY_LAST_CONTENT);
                return true;
            }
            list.add(new ComposedLastHttpContent(trailingHeaders, DecoderResult.SUCCESS));
            return true;
        }
        return false;
    }

    private void encodeFullResponse(HttpResponse httpResponse, HttpContent httpContent, List<Object> list) {
        encodeContent(httpContent, list);
        if (HttpUtil.isContentLengthSet(httpResponse)) {
            int i2 = 0;
            for (int size = list.size(); size < list.size(); size++) {
                Object obj = list.get(size);
                if (obj instanceof HttpContent) {
                    i2 += ((HttpContent) obj).content().readableBytes();
                }
            }
            HttpUtil.setContentLength(httpResponse, i2);
            return;
        }
        httpResponse.headers().set(HttpHeaderNames.TRANSFER_ENCODING, HttpHeaderValues.CHUNKED);
    }

    private static void ensureContent(HttpObject httpObject) {
        if (httpObject instanceof HttpContent) {
            return;
        }
        throw new IllegalStateException("unexpected message type: " + httpObject.getClass().getName() + " (expected: " + HttpContent.class.getSimpleName() + ')');
    }

    private static void ensureHeaders(HttpObject httpObject) {
        if (httpObject instanceof HttpResponse) {
            return;
        }
        throw new IllegalStateException("unexpected message type: " + httpObject.getClass().getName() + " (expected: " + HttpResponse.class.getSimpleName() + ')');
    }

    private void fetchEncoderOutput(List<Object> list) {
        while (true) {
            ByteBuf byteBuf = (ByteBuf) this.encoder.readOutbound();
            if (byteBuf == null) {
                return;
            }
            if (!byteBuf.isReadable()) {
                byteBuf.release();
            } else {
                list.add(new DefaultHttpContent(byteBuf));
            }
        }
    }

    private void finishEncode(List<Object> list) {
        if (this.encoder.finish()) {
            fetchEncoderOutput(list);
        }
        this.encoder = null;
    }

    private static boolean isPassthru(HttpVersion httpVersion, int i2, CharSequence charSequence) {
        return i2 < 200 || i2 == 204 || i2 == 304 || charSequence == ZERO_LENGTH_HEAD || (charSequence == ZERO_LENGTH_CONNECT && i2 == 200) || httpVersion == HttpVersion.HTTP_1_0;
    }

    @Override // io.netty.handler.codec.MessageToMessageCodec
    public boolean acceptOutboundMessage(Object obj) throws Exception {
        return (obj instanceof HttpContent) || (obj instanceof HttpResponse);
    }

    protected abstract Result beginEncode(HttpResponse httpResponse, String str) throws Exception;

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        cleanupSafely(channelHandlerContext);
        super.channelInactive(channelHandlerContext);
    }

    @Override // io.netty.handler.codec.MessageToMessageCodec
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest, List list) throws Exception {
        decode2(channelHandlerContext, httpRequest, (List<Object>) list);
    }

    @Override // io.netty.handler.codec.MessageToMessageCodec
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, HttpObject httpObject, List list) throws Exception {
        encode2(channelHandlerContext, httpObject, (List<Object>) list);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        cleanupSafely(channelHandlerContext);
        super.handlerRemoved(channelHandlerContext);
    }

    /* renamed from: decode  reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest, List<Object> list) throws Exception {
        String str;
        List<String> all = httpRequest.headers().getAll(HttpHeaderNames.ACCEPT_ENCODING);
        int size = all.size();
        if (size == 0) {
            str = HttpContentDecoder.IDENTITY;
        } else if (size != 1) {
            str = StringUtil.join(",", all);
        } else {
            str = all.get(0);
        }
        HttpMethod method = httpRequest.method();
        if (HttpMethod.HEAD.equals(method)) {
            str = ZERO_LENGTH_HEAD;
        } else if (HttpMethod.CONNECT.equals(method)) {
            str = ZERO_LENGTH_CONNECT;
        }
        this.acceptEncodingQueue.add(str);
        list.add(ReferenceCountUtil.retain(httpRequest));
    }

    /* renamed from: encode  reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, HttpObject httpObject, List<Object> list) throws Exception {
        CharSequence poll;
        boolean z3 = (httpObject instanceof HttpResponse) && (httpObject instanceof LastHttpContent);
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State[this.state.ordinal()];
        if (i2 == 1) {
            ensureHeaders(httpObject);
            HttpResponse httpResponse = (HttpResponse) httpObject;
            int code = httpResponse.status().code();
            if (code == CONTINUE_CODE) {
                poll = null;
            } else {
                poll = this.acceptEncodingQueue.poll();
                if (poll == null) {
                    throw new IllegalStateException("cannot send more responses than requests");
                }
            }
            if (isPassthru(httpResponse.protocolVersion(), code, poll)) {
                if (z3) {
                    list.add(ReferenceCountUtil.retain(httpResponse));
                    return;
                }
                list.add(httpResponse);
                this.state = State.PASS_THROUGH;
                return;
            } else if (z3 && !((ByteBufHolder) httpResponse).content().isReadable()) {
                list.add(ReferenceCountUtil.retain(httpResponse));
                return;
            } else {
                Result beginEncode = beginEncode(httpResponse, poll.toString());
                if (beginEncode == null) {
                    if (z3) {
                        list.add(ReferenceCountUtil.retain(httpResponse));
                        return;
                    }
                    list.add(httpResponse);
                    this.state = State.PASS_THROUGH;
                    return;
                }
                this.encoder = beginEncode.contentEncoder();
                httpResponse.headers().set(HttpHeaderNames.CONTENT_ENCODING, beginEncode.targetContentEncoding());
                if (z3) {
                    DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(httpResponse.protocolVersion(), httpResponse.status());
                    defaultHttpResponse.headers().set(httpResponse.headers());
                    list.add(defaultHttpResponse);
                    ensureContent(httpResponse);
                    encodeFullResponse(defaultHttpResponse, (HttpContent) httpResponse, list);
                    return;
                }
                httpResponse.headers().remove(HttpHeaderNames.CONTENT_LENGTH);
                httpResponse.headers().set(HttpHeaderNames.TRANSFER_ENCODING, HttpHeaderValues.CHUNKED);
                list.add(httpResponse);
                this.state = State.AWAIT_CONTENT;
                if (!(httpObject instanceof HttpContent)) {
                    return;
                }
            }
        } else if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            ensureContent(httpObject);
            list.add(ReferenceCountUtil.retain(httpObject));
            if (httpObject instanceof LastHttpContent) {
                this.state = State.AWAIT_HEADERS;
                return;
            }
            return;
        }
        ensureContent(httpObject);
        if (encodeContent((HttpContent) httpObject, list)) {
            this.state = State.AWAIT_HEADERS;
        }
    }

    private void encode(ByteBuf byteBuf, List<Object> list) {
        this.encoder.writeOutbound(byteBuf.retain());
        fetchEncoderOutput(list);
    }
}
