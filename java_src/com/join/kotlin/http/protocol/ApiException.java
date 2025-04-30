package com.join.kotlin.http.protocol;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.JsonParseException;
import com.join.mgps.dto.ResponseModel;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.conn.ConnectTimeoutException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import retrofit2.HttpException;
/* compiled from: ApiException.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\b\u0016\u0018\u0000 \u00172\u00060\u0001j\u0002`\u0002:\u0001\u0017B%\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0003R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001e\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/http/protocol/ApiException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "T", "Lcom/join/mgps/dto/ResponseModel;", "toResponse", "", "cause", "Ljava/lang/Throwable;", "getCause", "()Ljava/lang/Throwable;", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "", "error", "I", "getError", "()I", "<init>", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public class ApiException extends RuntimeException {
    public static final int CODE_AUTH_INVALID = 401;
    public static final int CODE_JSON_PARSE_ERROR = 4010;
    public static final int CODE_NET_ERROR = 4000;
    public static final int CODE_SERVER_ERROR = 5000;
    public static final int CODE_TIMEOUT = 4080;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Throwable cause;
    private final int error;
    @Nullable
    private final String message;

    /* compiled from: ApiException.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0016\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u0016\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/http/protocol/ApiException$Companion;", "", "", "e", "Lcom/join/kotlin/http/protocol/ApiException;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "", "CODE_AUTH_INVALID", "I", "CODE_JSON_PARSE_ERROR", "CODE_NET_ERROR", "CODE_SERVER_ERROR", "CODE_TIMEOUT", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final ApiException build(@NotNull Throwable e4) {
            Intrinsics.checkNotNullParameter(e4, "e");
            e4.printStackTrace();
            if (e4 instanceof HttpException) {
                return new ApiException(4000, "网络异常", null, 4, null);
            }
            if (e4 instanceof UnknownHostException) {
                return new ApiException(4000, "网络连接失败，请检查后再试", null, 4, null);
            }
            if (!(e4 instanceof ConnectTimeoutException) && !(e4 instanceof SocketTimeoutException)) {
                if (e4 instanceof IOException) {
                    return new ApiException(4000, "网络异常", null, 4, null);
                }
                if (!(e4 instanceof JsonParseException) && !(e4 instanceof JSONException)) {
                    return new ApiException(5000, "系统错误", null, 4, null);
                }
                return new ApiException(4010, "数据解析错误，请稍后再试", null, 4, null);
            }
            return new ApiException(4080, "请求超时，请稍后再试", null, 4, null);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ ApiException(int i2, String str, Throwable th, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, (i4 & 4) != 0 ? null : th);
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.cause;
    }

    public final int getError() {
        return this.error;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.message;
    }

    @NotNull
    public final <T> ResponseModel<T> toResponse() {
        int i2 = this.error;
        return new ResponseModel<>(i2, i2, getMessage());
    }

    public ApiException(int i2, @Nullable String str, @Nullable Throwable th) {
        super(str, th);
        this.error = i2;
        this.message = str;
        this.cause = th;
    }
}
