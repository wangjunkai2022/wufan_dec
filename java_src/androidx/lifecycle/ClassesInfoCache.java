package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes.dex */
final class ClassesInfoCache {

    /* renamed from: c  reason: collision with root package name */
    static ClassesInfoCache f6182c = new ClassesInfoCache();

    /* renamed from: d  reason: collision with root package name */
    private static final int f6183d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final int f6184e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f6185f = 2;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, CallbackInfo> f6186a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Boolean> f6187b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* loaded from: classes.dex */
    public static class CallbackInfo {

        /* renamed from: a  reason: collision with root package name */
        final Map<Lifecycle.Event, List<MethodReference>> f6188a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        final Map<MethodReference, Lifecycle.Event> f6189b;

        CallbackInfo(Map<MethodReference, Lifecycle.Event> map) {
            this.f6189b = map;
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<MethodReference> list = this.f6188a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f6188a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        private static void b(List<MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(lifecycleOwner, event, obj);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            b(this.f6188a.get(event), lifecycleOwner, event, obj);
            b(this.f6188a.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class MethodReference {

        /* renamed from: a  reason: collision with root package name */
        final int f6190a;

        /* renamed from: b  reason: collision with root package name */
        final Method f6191b;

        MethodReference(int i2, Method method) {
            this.f6190a = i2;
            this.f6191b = method;
            method.setAccessible(true);
        }

        void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            try {
                int i2 = this.f6190a;
                if (i2 == 0) {
                    this.f6191b.invoke(obj, new Object[0]);
                } else if (i2 == 1) {
                    this.f6191b.invoke(obj, lifecycleOwner);
                } else if (i2 != 2) {
                } else {
                    this.f6191b.invoke(obj, lifecycleOwner, event);
                }
            } catch (IllegalAccessException e4) {
                throw new RuntimeException(e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException("Failed to call observer method", e5.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MethodReference) {
                MethodReference methodReference = (MethodReference) obj;
                return this.f6190a == methodReference.f6190a && this.f6191b.getName().equals(methodReference.f6191b.getName());
            }
            return false;
        }

        public int hashCode() {
            return (this.f6190a * 31) + this.f6191b.getName().hashCode();
        }
    }

    ClassesInfoCache() {
    }

    private CallbackInfo a(Class<?> cls, @Nullable Method[] methodArr) {
        int i2;
        CallbackInfo c4;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (c4 = c(superclass)) != null) {
            hashMap.putAll(c4.f6189b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : c(cls2).f6189b.entrySet()) {
                e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z3 = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else if (!parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i2 = 1;
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        if (value != Lifecycle.Event.ON_ANY) {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                        i2 = 2;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    e(hashMap, new MethodReference(i2, method), value, cls);
                    z3 = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        CallbackInfo callbackInfo = new CallbackInfo(hashMap);
        this.f6186a.put(cls, callbackInfo);
        this.f6187b.put(cls, Boolean.valueOf(z3));
        return callbackInfo;
    }

    private Method[] b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e4) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e4);
        }
    }

    private void e(Map<MethodReference, Lifecycle.Event> map, MethodReference methodReference, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(methodReference);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(methodReference, event);
                return;
            }
            return;
        }
        Method method = methodReference.f6191b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallbackInfo c(Class<?> cls) {
        CallbackInfo callbackInfo = this.f6186a.get(cls);
        return callbackInfo != null ? callbackInfo : a(cls, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(Class<?> cls) {
        Boolean bool = this.f6187b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] b4 = b(cls);
        for (Method method : b4) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                a(cls, b4);
                return true;
            }
        }
        this.f6187b.put(cls, Boolean.FALSE);
        return false;
    }
}
