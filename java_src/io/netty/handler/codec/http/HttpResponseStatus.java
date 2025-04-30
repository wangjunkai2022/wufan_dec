package io.netty.handler.codec.http;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.common.statfs.StatFsHelper;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class HttpResponseStatus implements Comparable<HttpResponseStatus> {
    private final byte[] bytes;
    private final int code;
    private final AsciiString codeAsText;
    private HttpStatusClass codeClass;
    private final String reasonPhrase;
    public static final HttpResponseStatus CONTINUE = newStatus(100, "Continue");
    public static final HttpResponseStatus SWITCHING_PROTOCOLS = newStatus(101, "Switching Protocols");
    public static final HttpResponseStatus PROCESSING = newStatus(102, "Processing");
    public static final HttpResponseStatus OK = newStatus(200, "OK");
    public static final HttpResponseStatus CREATED = newStatus(201, "Created");
    public static final HttpResponseStatus ACCEPTED = newStatus(202, "Accepted");
    public static final HttpResponseStatus NON_AUTHORITATIVE_INFORMATION = newStatus(203, "Non-Authoritative Information");
    public static final HttpResponseStatus NO_CONTENT = newStatus(204, "No Content");
    public static final HttpResponseStatus RESET_CONTENT = newStatus(205, "Reset Content");
    public static final HttpResponseStatus PARTIAL_CONTENT = newStatus(206, "Partial Content");
    public static final HttpResponseStatus MULTI_STATUS = newStatus(207, "Multi-Status");
    public static final HttpResponseStatus MULTIPLE_CHOICES = newStatus(300, "Multiple Choices");
    public static final HttpResponseStatus MOVED_PERMANENTLY = newStatus(301, "Moved Permanently");
    public static final HttpResponseStatus FOUND = newStatus(302, "Found");
    public static final HttpResponseStatus SEE_OTHER = newStatus(303, "See Other");
    public static final HttpResponseStatus NOT_MODIFIED = newStatus(304, "Not Modified");
    public static final HttpResponseStatus USE_PROXY = newStatus(305, "Use Proxy");
    public static final HttpResponseStatus TEMPORARY_REDIRECT = newStatus(307, "Temporary Redirect");
    public static final HttpResponseStatus PERMANENT_REDIRECT = newStatus(308, "Permanent Redirect");
    public static final HttpResponseStatus BAD_REQUEST = newStatus(StatFsHelper.f11741h, "Bad Request");
    public static final HttpResponseStatus UNAUTHORIZED = newStatus(401, "Unauthorized");
    public static final HttpResponseStatus PAYMENT_REQUIRED = newStatus(402, "Payment Required");
    public static final HttpResponseStatus FORBIDDEN = newStatus(403, "Forbidden");
    public static final HttpResponseStatus NOT_FOUND = newStatus(TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE, "Not Found");
    public static final HttpResponseStatus METHOD_NOT_ALLOWED = newStatus(TTAdConstant.LANDING_PAGE_TYPE_CODE, "Method Not Allowed");
    public static final HttpResponseStatus NOT_ACCEPTABLE = newStatus(TTAdConstant.DOWNLOAD_APP_INFO_CODE, "Not Acceptable");
    public static final HttpResponseStatus PROXY_AUTHENTICATION_REQUIRED = newStatus(TTAdConstant.DOWNLOAD_URL_CODE, "Proxy Authentication Required");
    public static final HttpResponseStatus REQUEST_TIMEOUT = newStatus(TTAdConstant.INTERACTION_TYPE_CODE, "Request Timeout");
    public static final HttpResponseStatus CONFLICT = newStatus(TTAdConstant.IMAGE_LIST_CODE, "Conflict");
    public static final HttpResponseStatus GONE = newStatus(TTAdConstant.IMAGE_LIST_SIZE_CODE, "Gone");
    public static final HttpResponseStatus LENGTH_REQUIRED = newStatus(TTAdConstant.IMAGE_CODE, "Length Required");
    public static final HttpResponseStatus PRECONDITION_FAILED = newStatus(TTAdConstant.IMAGE_URL_CODE, "Precondition Failed");
    public static final HttpResponseStatus REQUEST_ENTITY_TOO_LARGE = newStatus(TTAdConstant.VIDEO_INFO_CODE, "Request Entity Too Large");
    public static final HttpResponseStatus REQUEST_URI_TOO_LONG = newStatus(TTAdConstant.VIDEO_URL_CODE, "Request-URI Too Long");
    public static final HttpResponseStatus UNSUPPORTED_MEDIA_TYPE = newStatus(TTAdConstant.VIDEO_COVER_URL_CODE, "Unsupported Media Type");
    public static final HttpResponseStatus REQUESTED_RANGE_NOT_SATISFIABLE = newStatus(416, "Requested Range Not Satisfiable");
    public static final HttpResponseStatus EXPECTATION_FAILED = newStatus(TTAdConstant.LIVE_FEED_URL_CODE, "Expectation Failed");
    public static final HttpResponseStatus MISDIRECTED_REQUEST = newStatus(TypedValues.CycleType.TYPE_WAVE_SHAPE, "Misdirected Request");
    public static final HttpResponseStatus UNPROCESSABLE_ENTITY = newStatus(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, "Unprocessable Entity");
    public static final HttpResponseStatus LOCKED = newStatus(TypedValues.CycleType.TYPE_WAVE_PERIOD, "Locked");
    public static final HttpResponseStatus FAILED_DEPENDENCY = newStatus(TypedValues.CycleType.TYPE_WAVE_OFFSET, "Failed Dependency");
    public static final HttpResponseStatus UNORDERED_COLLECTION = newStatus(TypedValues.CycleType.TYPE_WAVE_PHASE, "Unordered Collection");
    public static final HttpResponseStatus UPGRADE_REQUIRED = newStatus(426, "Upgrade Required");
    public static final HttpResponseStatus PRECONDITION_REQUIRED = newStatus(428, "Precondition Required");
    public static final HttpResponseStatus TOO_MANY_REQUESTS = newStatus(429, "Too Many Requests");
    public static final HttpResponseStatus REQUEST_HEADER_FIELDS_TOO_LARGE = newStatus(431, "Request Header Fields Too Large");
    public static final HttpResponseStatus INTERNAL_SERVER_ERROR = newStatus(500, "Internal Server Error");
    public static final HttpResponseStatus NOT_IMPLEMENTED = newStatus(TypedValues.PositionType.TYPE_TRANSITION_EASING, "Not Implemented");
    public static final HttpResponseStatus BAD_GATEWAY = newStatus(TypedValues.PositionType.TYPE_DRAWPATH, "Bad Gateway");
    public static final HttpResponseStatus SERVICE_UNAVAILABLE = newStatus(TypedValues.PositionType.TYPE_PERCENT_WIDTH, "Service Unavailable");
    public static final HttpResponseStatus GATEWAY_TIMEOUT = newStatus(TypedValues.PositionType.TYPE_PERCENT_HEIGHT, "Gateway Timeout");
    public static final HttpResponseStatus HTTP_VERSION_NOT_SUPPORTED = newStatus(TypedValues.PositionType.TYPE_SIZE_PERCENT, "HTTP Version Not Supported");
    public static final HttpResponseStatus VARIANT_ALSO_NEGOTIATES = newStatus(TypedValues.PositionType.TYPE_PERCENT_X, "Variant Also Negotiates");
    public static final HttpResponseStatus INSUFFICIENT_STORAGE = newStatus(TypedValues.PositionType.TYPE_PERCENT_Y, "Insufficient Storage");
    public static final HttpResponseStatus NOT_EXTENDED = newStatus(TypedValues.PositionType.TYPE_POSITION_TYPE, "Not Extended");
    public static final HttpResponseStatus NETWORK_AUTHENTICATION_REQUIRED = newStatus(FrameMetricsAggregator.EVERY_DURATION, "Network Authentication Required");

    private HttpResponseStatus(int i2) {
        this(i2, ((Object) HttpStatusClass.valueOf(i2).defaultReasonPhrase()) + " (" + i2 + ')', false);
    }

    private static HttpResponseStatus newStatus(int i2, String str) {
        return new HttpResponseStatus(i2, str, true);
    }

    public static HttpResponseStatus parseLine(CharSequence charSequence) {
        return charSequence instanceof AsciiString ? parseLine((AsciiString) charSequence) : parseLine(charSequence.toString());
    }

    public static HttpResponseStatus valueOf(int i2) {
        HttpResponseStatus valueOf0 = valueOf0(i2);
        return valueOf0 != null ? valueOf0 : new HttpResponseStatus(i2);
    }

    private static HttpResponseStatus valueOf0(int i2) {
        if (i2 != 307) {
            if (i2 != 308) {
                if (i2 != 428) {
                    if (i2 != 429) {
                        if (i2 != 431) {
                            if (i2 != 510) {
                                if (i2 != 511) {
                                    switch (i2) {
                                        case 100:
                                            return CONTINUE;
                                        case 101:
                                            return SWITCHING_PROTOCOLS;
                                        case 102:
                                            return PROCESSING;
                                        default:
                                            switch (i2) {
                                                case 200:
                                                    return OK;
                                                case 201:
                                                    return CREATED;
                                                case 202:
                                                    return ACCEPTED;
                                                case 203:
                                                    return NON_AUTHORITATIVE_INFORMATION;
                                                case 204:
                                                    return NO_CONTENT;
                                                case 205:
                                                    return RESET_CONTENT;
                                                case 206:
                                                    return PARTIAL_CONTENT;
                                                case 207:
                                                    return MULTI_STATUS;
                                                default:
                                                    switch (i2) {
                                                        case 300:
                                                            return MULTIPLE_CHOICES;
                                                        case 301:
                                                            return MOVED_PERMANENTLY;
                                                        case 302:
                                                            return FOUND;
                                                        case 303:
                                                            return SEE_OTHER;
                                                        case 304:
                                                            return NOT_MODIFIED;
                                                        case 305:
                                                            return USE_PROXY;
                                                        default:
                                                            switch (i2) {
                                                                case StatFsHelper.f11741h /* 400 */:
                                                                    return BAD_REQUEST;
                                                                case 401:
                                                                    return UNAUTHORIZED;
                                                                case 402:
                                                                    return PAYMENT_REQUIRED;
                                                                case 403:
                                                                    return FORBIDDEN;
                                                                case TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE /* 404 */:
                                                                    return NOT_FOUND;
                                                                case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 405 */:
                                                                    return METHOD_NOT_ALLOWED;
                                                                case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 406 */:
                                                                    return NOT_ACCEPTABLE;
                                                                case TTAdConstant.DOWNLOAD_URL_CODE /* 407 */:
                                                                    return PROXY_AUTHENTICATION_REQUIRED;
                                                                case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                                                                    return REQUEST_TIMEOUT;
                                                                case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                                                    return CONFLICT;
                                                                case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                                                    return GONE;
                                                                case TTAdConstant.IMAGE_CODE /* 411 */:
                                                                    return LENGTH_REQUIRED;
                                                                case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                                                    return PRECONDITION_FAILED;
                                                                case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                                                    return REQUEST_ENTITY_TOO_LARGE;
                                                                case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                                                    return REQUEST_URI_TOO_LONG;
                                                                case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                                                    return UNSUPPORTED_MEDIA_TYPE;
                                                                case 416:
                                                                    return REQUESTED_RANGE_NOT_SATISFIABLE;
                                                                case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                                                                    return EXPECTATION_FAILED;
                                                                default:
                                                                    switch (i2) {
                                                                        case TypedValues.CycleType.TYPE_WAVE_SHAPE /* 421 */:
                                                                            return MISDIRECTED_REQUEST;
                                                                        case TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE /* 422 */:
                                                                            return UNPROCESSABLE_ENTITY;
                                                                        case TypedValues.CycleType.TYPE_WAVE_PERIOD /* 423 */:
                                                                            return LOCKED;
                                                                        case TypedValues.CycleType.TYPE_WAVE_OFFSET /* 424 */:
                                                                            return FAILED_DEPENDENCY;
                                                                        case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                                                                            return UNORDERED_COLLECTION;
                                                                        case 426:
                                                                            return UPGRADE_REQUIRED;
                                                                        default:
                                                                            switch (i2) {
                                                                                case 500:
                                                                                    return INTERNAL_SERVER_ERROR;
                                                                                case TypedValues.PositionType.TYPE_TRANSITION_EASING /* 501 */:
                                                                                    return NOT_IMPLEMENTED;
                                                                                case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                                                                                    return BAD_GATEWAY;
                                                                                case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                                                                                    return SERVICE_UNAVAILABLE;
                                                                                case TypedValues.PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                                                                                    return GATEWAY_TIMEOUT;
                                                                                case TypedValues.PositionType.TYPE_SIZE_PERCENT /* 505 */:
                                                                                    return HTTP_VERSION_NOT_SUPPORTED;
                                                                                case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
                                                                                    return VARIANT_ALSO_NEGOTIATES;
                                                                                case TypedValues.PositionType.TYPE_PERCENT_Y /* 507 */:
                                                                                    return INSUFFICIENT_STORAGE;
                                                                                default:
                                                                                    return null;
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                }
                                return NETWORK_AUTHENTICATION_REQUIRED;
                            }
                            return NOT_EXTENDED;
                        }
                        return REQUEST_HEADER_FIELDS_TOO_LARGE;
                    }
                    return TOO_MANY_REQUESTS;
                }
                return PRECONDITION_REQUIRED;
            }
            return PERMANENT_REDIRECT;
        }
        return TEMPORARY_REDIRECT;
    }

    public int code() {
        return this.code;
    }

    public AsciiString codeAsText() {
        return this.codeAsText;
    }

    public HttpStatusClass codeClass() {
        HttpStatusClass httpStatusClass = this.codeClass;
        if (httpStatusClass == null) {
            HttpStatusClass valueOf = HttpStatusClass.valueOf(this.code);
            this.codeClass = valueOf;
            return valueOf;
        }
        return httpStatusClass;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode(ByteBuf byteBuf) {
        byte[] bArr = this.bytes;
        if (bArr == null) {
            ByteBufUtil.copy(this.codeAsText, byteBuf);
            byteBuf.writeByte(32);
            byteBuf.writeCharSequence(this.reasonPhrase, CharsetUtil.US_ASCII);
            return;
        }
        byteBuf.writeBytes(bArr);
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpResponseStatus) && code() == ((HttpResponseStatus) obj).code();
    }

    public int hashCode() {
        return code();
    }

    public String reasonPhrase() {
        return this.reasonPhrase;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.reasonPhrase.length() + 4);
        sb.append((CharSequence) this.codeAsText);
        sb.append(' ');
        sb.append(this.reasonPhrase);
        return sb.toString();
    }

    public HttpResponseStatus(int i2, String str) {
        this(i2, str, false);
    }

    public static HttpResponseStatus parseLine(String str) {
        try {
            int indexOf = str.indexOf(32);
            if (indexOf == -1) {
                return valueOf(Integer.parseInt(str));
            }
            return valueOf(Integer.parseInt(str.substring(0, indexOf)), str.substring(indexOf + 1));
        } catch (Exception e4) {
            throw new IllegalArgumentException("malformed status line: " + str, e4);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(HttpResponseStatus httpResponseStatus) {
        return code() - httpResponseStatus.code();
    }

    private HttpResponseStatus(int i2, String str, boolean z3) {
        ObjectUtil.checkPositiveOrZero(i2, "code");
        ObjectUtil.checkNotNull(str, "reasonPhrase");
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '\n' || charAt == '\r') {
                throw new IllegalArgumentException("reasonPhrase contains one of the following prohibited characters: \\r\\n: " + str);
            }
        }
        this.code = i2;
        String num = Integer.toString(i2);
        this.codeAsText = new AsciiString(num);
        this.reasonPhrase = str;
        if (z3) {
            this.bytes = (num + ' ' + str).getBytes(CharsetUtil.US_ASCII);
            return;
        }
        this.bytes = null;
    }

    public static HttpResponseStatus valueOf(int i2, String str) {
        HttpResponseStatus valueOf0 = valueOf0(i2);
        return (valueOf0 == null || !valueOf0.reasonPhrase().contentEquals(str)) ? new HttpResponseStatus(i2, str) : valueOf0;
    }

    public static HttpResponseStatus parseLine(AsciiString asciiString) {
        try {
            int forEachByte = asciiString.forEachByte(ByteProcessor.FIND_ASCII_SPACE);
            return forEachByte == -1 ? valueOf(asciiString.parseInt()) : valueOf(asciiString.parseInt(0, forEachByte), asciiString.toString(forEachByte + 1));
        } catch (Exception e4) {
            throw new IllegalArgumentException("malformed status line: " + ((Object) asciiString), e4);
        }
    }
}
