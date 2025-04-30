package com.mob.tools.a;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.mob.tools.utils.ReflectHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f53686a = com.mob.commons.j.a("014)cjdeejeidchaehffbdde>fMfd^hZej");

    /* renamed from: b  reason: collision with root package name */
    private static h f53687b;

    /* renamed from: c  reason: collision with root package name */
    private a f53688c;

    /* loaded from: classes4.dex */
    interface a {
        <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) throws Throwable;

        <T> T a(String str) throws Throwable;

        <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr) throws Throwable;

        <T> T a(String str, String str2, Object obj) throws Throwable;
    }

    private h(Context context, int i2) {
        if (i2 >= 30 && Build.VERSION.SDK_INT >= 30) {
            this.f53688c = new b(context);
        } else {
            this.f53688c = new c();
        }
    }

    public static synchronized h a(Context context, int i2) {
        h hVar;
        synchronized (h.class) {
            if (f53687b == null) {
                f53687b = new h(context, i2);
            }
            hVar = f53687b;
        }
        return hVar;
    }

    /* loaded from: classes4.dex */
    static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private Method f53689a;

        /* renamed from: b  reason: collision with root package name */
        private Method f53690b;

        /* renamed from: c  reason: collision with root package name */
        private Method f53691c;

        /* renamed from: d  reason: collision with root package name */
        private Method f53692d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f53693e;

        public b(Context context) {
            this.f53689a = null;
            this.f53690b = null;
            this.f53691c = null;
            this.f53692d = null;
            this.f53693e = false;
            try {
                File file = new File(context.getFilesDir(), h.f53686a);
                if (!file.exists()) {
                    byte[] decode = Base64.decode("UEsDBBQACAgIABJhC1UAAAAAAAAAAAAAAAAUAAQATUVUQS1JTkYvTUFOSUZFU1QuTUb+ygAA803My0xLLS7RDUstKs7Mz7NSMNQz4OVySa3Q9clPTiwBCyXnJBYXpxbrpaRW8HI5F6UmlqSm6DpVWimkVACVG5rxcvFyAQBQSwcI8N6zmEcAAABJAAAAUEsDBBQACAgIABJhC1UAAAAAAAAAAAAAAAALAAAAY2xhc3Nlcy5kZXidl11sHFcVx8+dOx87X7vrSeK1txt2nRWR3ThZk1BIapPadZs40hpKbVmQ9KGb9cTedr3r7I5dF4rUooSCGqQEVUKFClGpUaBSBQ9FAopAVftEK/EADwgQUpGK8sDXQ4kE4ut/753dzBI/daXf3DPnnnvuOefO3rmzGu44U8fuoVuHa7eWXr1Ze+o/v59+7sC5ixmj9LORF79ZvukTbRLRzspHA4p/U9CdJqXPgiuMKIP2HUb9nzB+WiMSqiwn+qGDcWj/YBHdBH8Gfwf/AKkUkQsyYC/IgwNgFnwW7IDnwQ3wOvgF+COwbNiBk2AOPAjOgCp4CCyBNfAUuAZeBC+BG+AV8Cb4JfgNeA/8BfwbaIg1DybBfeAzoAaa4ElwGbwAXgKvgh+AN8DPwXvgnyDrEh0CJ8Ap8GnwCLgAtsBXwTXwdfAt8F2AYYSGPIASU5pUXUWNh+Ka7gF7wT4wAu4CBbAfGKTqLX4m0EET9bXjvshSeiFfgmzF8pWEPmn/vFibWH45IX8/Yf+T2I+I/S1LxeXGMQzH8jvQ52L5V5BH4xx/JwZCq0nrNJVly+iwbC06IluNjsUZqdagadmmZMvgaSzOuyJzduiQtFJ+U8hmRrY+zZLIjdO4bNW9gxFHZavuKfZlxLKo4aTI0ac4GqLnEPwNT8nfS8hvJ+TfJuS/xrLwq1om5R+5yv+meFiQfwZaDn6K2y+I9c4FqYKt41k8SMFd5dd9CryCb9Ki73qtKQfPjEeq/xAFhwb7g0LB95OWLLCDfPmVNAVu3jtAi57jtqaydNXxzKKpUzBRfgF9Tt6do0XXdoL87Rkz0o/QihE12+NF7iRGTPVGuAkbrYi/EeZ0xJxC9zXHM4JRNWYxreyW7Izl6xflE+dZrVIK+wp7dvyWqtumqBOzurasC9G/XPWsoy5mQUPe/CCVI58KBnI2dFNkelRHplq5m6bFFDfFHGPcoyLqPIQV5tKPhzUQzw6iGyno8GPAz5fgx4Ify7SFn2XT0wK9fBl+HMMWfu43lB814u7dRvDyJdi7urTniKTIbGqVMvQMrml6gzx9SBcrbcg4JhDHhIhjPLCCYZXRISpf6mdkFQx/ILPyF4V/zVr0NJnbNU3E5MD7ED0qq/xt39OGNLF/GPIZnsUcpQ9cs4uP6HT1x8KjE6/BMvxNCn8jgVXg8KfD32X4M+HPNCzhb96AP1ULW7eEv4/oce3kiBkqb/kUW8p5hY3GPT7Ee2vUwDyn4jU67jo09tpx3aLjnkFjb52AdDFrIm9Rzw+6ghPxCH9gBeXKeWLlUqiqL1fOkys3/jYl9tbeXtBEsLIuXP2XxTtO1H2GK7sFrvbHR7n6//f2TR1XE6uUTuw3mmzTUjYT/Vzem1Kv5Nvj0vE4oWOk5mLx/iraDOkTy8vTxGeW7yVzptFqRCdJOzlO/kLj/kZrNewceay2XSNWJa1aJV7FRa+Kq1mVPypU6+2NysZqpV6LKuflkEpv7DTl4t56Bb07m80oqixX22vTtL+6WmtuNx6v1FqtdlSLGu1WZamx1qpFW51wmvK7dC+vd9pPdKdpqCpCqjRrrbXKfLPWhSpIqD51/rGwHg3qlqJOo4VZ9yV00l3tfBOzFRPqTnihifGV+XarG3W26lEbaYzuYnCqETZXRaR3di2G0XobfWyFtBVUbuUssbOkna0SO0fBuTvj33NulwQGlL0M7LoY8cnaRki83vwc6XXESWyVcqpgR7pPdqNw48jK4sNbragBs3S4E25sigp2F+YeOkPGBRE42bKRjqwL7Y4U/FhQ8RNfCyMaxuWBELN2wtVETSib0MtS0FBCE3vI3aGKOyx0LMwjflsIarwL8QwmqLXqITm46WUQQO7nEzswG63t9uOwU63MzNxQfY5qVW5K7tLoRrR+evdU9gx2qWj2DirjaYWXJUTcWF0NW3ObjQf7tSWvFT6x0I/fxV3/xt6sdWobXZmvErHGlOqE9bCxHXbI74bRXL0edrsNPI803N19Bi1aJz1ab3TJ2K41t+B3e6O/yn1RPlJ4ZVppWmAftyb/ixONy/ZlOTvs/o2bpw02muV82mVBlmtH3We5ccr8Bt4GzNAMbhiGmf8Q1+dTX6ZZVrQm3+Vs3H2NU8mgu3nx4KzQaLHmXc5PuNc5+7AzQ8NGafZjJ++zplmQ4exe901O97gztN8oSnXST3nQ73WufcKlY7wozK4/rH1+/8AMx90GZ2P2DGkae6Dg5lguk+O5NK7ZXB5tHhJeDuhjI9aATfb/bESf0e9T91b/Ptu3sfu6/lh5uH3maf19k32FXbGY/bLN7D+B9x1m/9pl9nc8Zl/11Xm8d0bstb1vIbEP976HON3+JhL7du97yKTb30Q8q+7FO4OV1Pk6Eu+NkrIR506WVXu5OJdrJTWX+Ibisb08Q5aUH3EupXisPK9mlSy+1/4HUEsHCBo4DIIkBwAA6A0AAFBLAQIUABQACAgIABJhC1Xw3rOYRwAAAEkAAAAUAAQAAAAAAAAAAAAAAAAAAABNRVRBLUlORi9NQU5JRkVTVC5NRv7KAABQSwECFAAUAAgICAASYQtVGjgMgiQHAADoDQAACwAAAAAAAAAAAAAAAACNAAAAY2xhc3Nlcy5kZXhQSwUGAAAAAAIAAgB/AAAA6gcAAAAA", 2);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(decode);
                    fileOutputStream.close();
                }
                Class cls = (Class) ReflectHelper.invokeInstanceMethod(ReflectHelper.newInstance(ReflectHelper.importClass(com.mob.commons.j.a("021fObdcb_h8bcbhcjdebgde0bgjTcjdg2gKbjdibccbAg")), file), com.mob.commons.j.a("009Hcbcabd?f5eecbbddede"), new Object[]{com.mob.commons.j.a("026?beca<jScj(jf_cjbebd8bUcjdabcbiEfgEbfcjfbbcdhbcbiBfg%bf"), null}, new Class[]{String.class, ClassLoader.class});
                Method declaredMethod = cls.getDeclaredMethod(com.mob.commons.j.a("010Xbcbi1hQcabhLg@fbchefce"), Class.class, Object.class, String.class, Class[].class, Object[].class);
                this.f53689a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = cls.getDeclaredMethod(com.mob.commons.j.a("010_bcbiTh2cabhWg%fbchefce"), String.class, Object.class, String.class, Class[].class, Object[].class);
                this.f53690b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = cls.getDeclaredMethod(com.mob.commons.j.a("0128biTg3dbfbcebide@b4bdbibeNg"), String.class);
                this.f53691c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                Method declaredMethod4 = cls.getDeclaredMethod(com.mob.commons.j.a("009Odd%gbQfbdibcNg]cb4f"), String.class, String.class, Object.class);
                this.f53692d = declaredMethod4;
                declaredMethod4.setAccessible(true);
                this.f53693e = true;
            } catch (Throwable unused) {
            }
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) throws Throwable {
            Method method = this.f53689a;
            if (method != null) {
                return (T) method.invoke(null, cls, obj, str, clsArr, objArr);
            }
            throw new Throwable("IHA is null");
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr) throws Throwable {
            Method method = this.f53690b;
            if (method != null) {
                return (T) method.invoke(null, str, obj, str2, clsArr, objArr);
            }
            throw new Throwable("IHABC is null");
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str) throws Throwable {
            Method method = this.f53691c;
            if (method != null) {
                return (T) method.invoke(null, str);
            }
            throw new Throwable("nHI is null");
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str, String str2, Object obj) throws Throwable {
            Method method = this.f53692d;
            if (method != null) {
                return (T) method.invoke(null, str, str2, obj);
            }
            throw new Throwable("mGHF is null");
        }
    }

    /* loaded from: classes4.dex */
    static class c implements a {
        c() {
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) throws Throwable {
            Method method = (Method) Class.class.getDeclaredMethod(com.mob.commons.j.a("017 dd+gb-dg(gKbecbbdbfKgf'eg'gbaUcaDf"), String.class, Class[].class).invoke(cls, str, clsArr);
            method.setAccessible(true);
            return (T) method.invoke(obj, objArr);
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr) throws Throwable {
            return (T) a((Class) Class.class.getDeclaredMethod(com.mob.commons.j.a("007GdfcabfcdbdSjg"), String.class).invoke(null, str), obj, str2, clsArr, objArr);
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str) throws Throwable {
            return (T) Class.class.getDeclaredMethod(com.mob.commons.j.a("011LbiJgHdbcebideAb?bdbibe@g"), new Class[0]).invoke((Class) Class.class.getDeclaredMethod(com.mob.commons.j.a("0077dfcabfcdbd?jg"), String.class).invoke(null, str), new Object[0]);
        }

        @Override // com.mob.tools.a.h.a
        public <T> T a(String str, String str2, Object obj) throws Throwable {
            Field field = (Field) Class.class.getDeclaredMethod(com.mob.commons.j.a("016-dd)gb@dgAgUbecbbdbf6gf?dibc1gEcb<f"), String.class).invoke((Class) Class.class.getDeclaredMethod(com.mob.commons.j.a("007'dfcabfcdbdPjg"), String.class).invoke(null, str), str2);
            field.setAccessible(true);
            return (T) field.get(obj);
        }
    }

    public boolean a(Context context) {
        File file = new File(context.getFilesDir(), f53686a);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) throws Throwable {
        return (T) this.f53688c.a(cls, obj, str, clsArr, objArr);
    }

    public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr) throws Throwable {
        return (T) this.f53688c.a(str, obj, str2, clsArr, objArr);
    }

    public <T> T a(String str) throws Throwable {
        return (T) this.f53688c.a(str);
    }

    public <T> T a(String str, String str2, Object obj) throws Throwable {
        return (T) this.f53688c.a(str, str2, obj);
    }
}
