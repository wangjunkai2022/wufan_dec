package retrofit2;

import external.org.apache.commons.lang3.d;
import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.p;
import kotlinx.coroutines.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KotlinExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0002\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0002\u0010\u0003\u001a'\u0010\u0006\u001a\u00028\u0000\"\b\b\u0000\u0010\u0000*\u00020\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a+\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0000*\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005H\u0087@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0007\u001a-\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\b\b\u0000\u0010\u0000*\u00020\u0004*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"T", "Lretrofit2/Retrofit;", "create", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "", "Lretrofit2/Call;", "await", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "Lretrofit2/Response;", "awaitResponse", "retrofit"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "KotlinExtensions")
/* loaded from: classes5.dex */
public final class KotlinExtensions {
    @Nullable
    public static final <T> Object await(@NotNull final Call<T> call, @NotNull Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final q qVar = new q(intercepted, 1);
        qVar.l(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable th) {
                p pVar = p.this;
                Result.Companion companion = Result.Companion;
                pVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                if (response.isSuccessful()) {
                    T body = response.body();
                    if (body == null) {
                        Object tag = call2.request().tag(Invocation.class);
                        if (tag == null) {
                            Intrinsics.throwNpe();
                        }
                        Intrinsics.checkExpressionValueIsNotNull(tag, "call.request().tag(Invocation::class.java)!!");
                        Method method = ((Invocation) tag).method();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Response from ");
                        Intrinsics.checkExpressionValueIsNotNull(method, "method");
                        Class<?> declaringClass = method.getDeclaringClass();
                        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "method.declaringClass");
                        sb.append(declaringClass.getName());
                        sb.append(d.f65364a);
                        sb.append(method.getName());
                        sb.append(" was null but response body type was declared as non-null");
                        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
                        p pVar = p.this;
                        Result.Companion companion = Result.Companion;
                        pVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(kotlinNullPointerException)));
                        return;
                    }
                    p pVar2 = p.this;
                    Result.Companion companion2 = Result.Companion;
                    pVar2.resumeWith(Result.m24constructorimpl(body));
                    return;
                }
                p pVar3 = p.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion3 = Result.Companion;
                pVar3.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(httpException)));
            }
        });
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    @JvmName(name = "awaitNullable")
    @Nullable
    public static final <T> Object awaitNullable(@NotNull final Call<T> call, @NotNull Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final q qVar = new q(intercepted, 1);
        qVar.l(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable th) {
                p pVar = p.this;
                Result.Companion companion = Result.Companion;
                pVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                if (response.isSuccessful()) {
                    p pVar = p.this;
                    T body = response.body();
                    Result.Companion companion = Result.Companion;
                    pVar.resumeWith(Result.m24constructorimpl(body));
                    return;
                }
                p pVar2 = p.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion2 = Result.Companion;
                pVar2.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(httpException)));
            }
        });
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    @Nullable
    public static final <T> Object awaitResponse(@NotNull final Call<T> call, @NotNull Continuation<? super Response<T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final q qVar = new q(intercepted, 1);
        qVar.l(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable th) {
                p pVar = p.this;
                Result.Companion companion = Result.Companion;
                pVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                p pVar = p.this;
                Result.Companion companion = Result.Companion;
                pVar.resumeWith(Result.m24constructorimpl(response));
            }
        });
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    private static final <T> T create(@NotNull Retrofit retrofit) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) retrofit.create(Object.class);
    }
}
