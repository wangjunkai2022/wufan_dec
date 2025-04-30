package com.mob.commons.cc;

import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;
/* loaded from: classes4.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private a f52986a;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Number f52987a;

        /* renamed from: b  reason: collision with root package name */
        private Number f52988b;

        /* renamed from: c  reason: collision with root package name */
        private Number f52989c;

        /* renamed from: d  reason: collision with root package name */
        private Number f52990d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f52991e;

        public a(Number number, Number number2, Number number3) {
            Number valueOf;
            Number valueOf2;
            Number[] numberArr = {number, number2, number3};
            int[] iArr = {0, 0, 0};
            for (int i2 = 0; i2 < 3; i2++) {
                Number number4 = numberArr[i2];
                if (number4 != null) {
                    if (number4 instanceof Byte) {
                        iArr[i2] = 1;
                    } else if (number4 instanceof Short) {
                        iArr[i2] = 2;
                    } else if (number4 instanceof Integer) {
                        iArr[i2] = 3;
                    } else if (number4 instanceof Long) {
                        iArr[i2] = 4;
                    } else if (number4 instanceof Float) {
                        iArr[i2] = 5;
                    } else if (number4 instanceof Double) {
                        iArr[i2] = 6;
                    } else if (number4 instanceof BigInteger) {
                        iArr[i2] = 7;
                    } else if (number4 instanceof BigDecimal) {
                        iArr[i2] = 8;
                    }
                }
            }
            int i4 = 0;
            for (int i5 = 0; i5 < 3; i5++) {
                if (i4 < iArr[i5]) {
                    i4 = iArr[i5];
                }
            }
            if (number == null) {
                valueOf = new Number[]{Integer.MIN_VALUE, Byte.MIN_VALUE, Short.valueOf((short) ShortCompanionObject.MIN_VALUE), Integer.MIN_VALUE, Long.MIN_VALUE, Float.valueOf(Float.MIN_VALUE), Double.valueOf(Double.MIN_VALUE), new BigInteger(String.valueOf(Long.MIN_VALUE)), new BigDecimal(Double.MIN_VALUE)}[i4];
            } else {
                switch (i4) {
                    case 1:
                        valueOf = Byte.valueOf(Double.valueOf(String.valueOf(number)).byteValue());
                        break;
                    case 2:
                        valueOf = Short.valueOf(Double.valueOf(String.valueOf(number)).shortValue());
                        break;
                    case 3:
                        valueOf = Integer.valueOf(Double.valueOf(String.valueOf(number)).intValue());
                        break;
                    case 4:
                        valueOf = Long.valueOf(Double.valueOf(String.valueOf(number)).longValue());
                        break;
                    case 5:
                        valueOf = Float.valueOf(Double.valueOf(String.valueOf(number)).floatValue());
                        break;
                    case 6:
                        valueOf = Double.valueOf(String.valueOf(number));
                        break;
                    case 7:
                        valueOf = new BigInteger(String.valueOf(number));
                        break;
                    case 8:
                        valueOf = new BigDecimal(String.valueOf(number));
                        break;
                    default:
                        valueOf = number;
                        break;
                }
            }
            if (number2 == null) {
                valueOf2 = new Number[]{Integer.MAX_VALUE, Byte.valueOf((byte) ByteCompanionObject.MAX_VALUE), Short.valueOf((short) ShortCompanionObject.MAX_VALUE), Integer.MAX_VALUE, Long.MAX_VALUE, Float.valueOf(Float.MAX_VALUE), Double.valueOf(Double.MAX_VALUE), new BigInteger(String.valueOf(Long.MAX_VALUE)), new BigDecimal(Double.MAX_VALUE)}[i4];
            } else {
                switch (i4) {
                    case 1:
                        valueOf2 = Byte.valueOf(Double.valueOf(String.valueOf(number2)).byteValue());
                        break;
                    case 2:
                        valueOf2 = Short.valueOf(Double.valueOf(String.valueOf(number2)).shortValue());
                        break;
                    case 3:
                        valueOf2 = Integer.valueOf(Double.valueOf(String.valueOf(number2)).intValue());
                        break;
                    case 4:
                        valueOf2 = Long.valueOf(Double.valueOf(String.valueOf(number2)).longValue());
                        break;
                    case 5:
                        valueOf2 = Float.valueOf(Double.valueOf(String.valueOf(number2)).floatValue());
                        break;
                    case 6:
                        valueOf2 = Double.valueOf(String.valueOf(number2));
                        break;
                    case 7:
                        valueOf2 = new BigInteger(String.valueOf(number2));
                        break;
                    case 8:
                        valueOf2 = new BigDecimal(String.valueOf(number2));
                        break;
                    default:
                        valueOf2 = number2;
                        break;
                }
            }
            this.f52987a = valueOf;
            this.f52988b = valueOf2;
            this.f52989c = number3;
            boolean z3 = ((Comparable) valueOf).compareTo(valueOf2) > 0;
            this.f52991e = z3;
            if (this.f52989c == null) {
                this.f52989c = Integer.valueOf(z3 ? -1 : 1);
            }
        }

        public boolean a() {
            Number number = this.f52990d;
            if (number == null) {
                number = this.f52987a;
            }
            return this.f52991e ? ((Comparable) number).compareTo(this.f52988b) >= 0 : ((Comparable) number).compareTo(this.f52988b) <= 0;
        }

        public Number b() {
            if (this.f52990d == null) {
                this.f52990d = this.f52987a;
            }
            Number number = this.f52990d;
            Number number2 = this.f52989c;
            if (number2 instanceof BigDecimal) {
                this.f52990d = ((BigDecimal) number).add((BigDecimal) number2);
            } else if (number2 instanceof BigInteger) {
                this.f52990d = ((BigInteger) number).add((BigInteger) number2);
            } else if (number2 instanceof Double) {
                this.f52990d = Double.valueOf(number.doubleValue() + this.f52989c.doubleValue());
            } else if (number2 instanceof Float) {
                this.f52990d = Float.valueOf(number.floatValue() + this.f52989c.floatValue());
            } else if (number2 instanceof Long) {
                this.f52990d = Long.valueOf(number.longValue() + this.f52989c.longValue());
            } else if (number2 instanceof Integer) {
                this.f52990d = Integer.valueOf(number.intValue() + this.f52989c.intValue());
            } else if (number2 instanceof Short) {
                this.f52990d = Integer.valueOf(number.shortValue() + this.f52989c.shortValue());
            } else {
                this.f52990d = Integer.valueOf(number.byteValue() + this.f52989c.byteValue());
            }
            return number;
        }
    }

    public z(Number number, Number number2, Number number3) {
        this.f52986a = new a(number, number2, number3);
    }

    public a a() {
        return this.f52986a;
    }

    public boolean b(Number number) {
        return a(number);
    }

    public boolean a(Number number) {
        return ((Comparable) this.f52986a.f52987a).compareTo(number) <= 0 && ((Comparable) this.f52986a.f52988b).compareTo(number) >= 0;
    }

    public Number[] b() {
        return new Number[]{this.f52986a.f52987a, this.f52986a.f52988b};
    }
}
