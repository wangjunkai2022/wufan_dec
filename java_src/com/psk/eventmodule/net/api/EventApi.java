package com.psk.eventmodule.net.api;

import com.psk.eventmodule.net.modle.ResponseModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: EventApi.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J!\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"Lcom/psk/eventmodule/net/api/EventApi;", "", "Lokhttp3/RequestBody;", "request", "Lcom/psk/eventmodule/net/modle/ResponseModel;", "sendPoint", "(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public interface EventApi {
    @POST("/byte_data/batch")
    @Nullable
    Object sendPoint(@Body @NotNull RequestBody requestBody, @NotNull Continuation<? super ResponseModel<?>> continuation);
}
