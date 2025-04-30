package retrofit2.adapter.rxjava2;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.j;
import io.reactivex.q;
import io.reactivex.z;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import javax.annotation.Nullable;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;
/* compiled from: RxJava2CallAdapterFactory.java */
/* loaded from: classes.dex */
public final class g extends CallAdapter.Factory {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final h0 f74079a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f74080b;

    private g(@Nullable h0 h0Var, boolean z3) {
        this.f74079a = h0Var;
        this.f74080b = z3;
    }

    public static g a() {
        return new g(null, false);
    }

    public static g b() {
        return new g(null, true);
    }

    public static g c(h0 h0Var) {
        Objects.requireNonNull(h0Var, "scheduler == null");
        return new g(h0Var, false);
    }

    @Override // retrofit2.CallAdapter.Factory
    @Nullable
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Type type2;
        boolean z3;
        boolean z4;
        Class<?> rawType = CallAdapter.Factory.getRawType(type);
        if (rawType == io.reactivex.a.class) {
            return new f(Void.class, this.f74079a, this.f74080b, false, true, false, false, false, true);
        }
        boolean z5 = rawType == j.class;
        boolean z6 = rawType == i0.class;
        boolean z7 = rawType == q.class;
        if (rawType == z.class || z5 || z6 || z7) {
            if (!(type instanceof ParameterizedType)) {
                String str = !z5 ? !z6 ? z7 ? "Maybe" : "Observable" : "Single" : "Flowable";
                throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
            }
            Type parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) type);
            Class<?> rawType2 = CallAdapter.Factory.getRawType(parameterUpperBound);
            if (rawType2 == Response.class) {
                if (parameterUpperBound instanceof ParameterizedType) {
                    type2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
                    z3 = false;
                } else {
                    throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
                }
            } else if (rawType2 == d.class) {
                if (parameterUpperBound instanceof ParameterizedType) {
                    type2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
                    z3 = true;
                } else {
                    throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                }
            } else {
                type2 = parameterUpperBound;
                z3 = false;
                z4 = true;
                return new f(type2, this.f74079a, this.f74080b, z3, z4, z5, z6, z7, false);
            }
            z4 = false;
            return new f(type2, this.f74079a, this.f74080b, z3, z4, z5, z6, z7, false);
        }
        return null;
    }
}
