package androidx.constraintlayout.core.parser;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.Bugly;
/* loaded from: classes.dex */
public class CLToken extends CLElement {

    /* renamed from: h  reason: collision with root package name */
    int f2303h;

    /* renamed from: i  reason: collision with root package name */
    Type f2304i;

    /* renamed from: j  reason: collision with root package name */
    char[] f2305j;

    /* renamed from: k  reason: collision with root package name */
    char[] f2306k;

    /* renamed from: l  reason: collision with root package name */
    char[] f2307l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.parser.CLToken$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2308a;

        static {
            int[] iArr = new int[Type.values().length];
            f2308a = iArr;
            try {
                iArr[Type.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2308a[Type.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2308a[Type.NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2308a[Type.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum Type {
        UNKNOWN,
        TRUE,
        FALSE,
        NULL
    }

    public CLToken(char[] cArr) {
        super(cArr);
        this.f2303h = 0;
        this.f2304i = Type.UNKNOWN;
        this.f2305j = "true".toCharArray();
        this.f2306k = Bugly.SDK_IS_DEV.toCharArray();
        this.f2307l = "null".toCharArray();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLToken(cArr);
    }

    public boolean getBoolean() throws CLParsingException {
        Type type = this.f2304i;
        if (type == Type.TRUE) {
            return true;
        }
        if (type == Type.FALSE) {
            return false;
        }
        throw new CLParsingException("this token is not a boolean: <" + content() + SimpleComparison.GREATER_THAN_OPERATION, this);
    }

    public Type getType() {
        return this.f2304i;
    }

    public boolean isNull() throws CLParsingException {
        if (this.f2304i == Type.NULL) {
            return true;
        }
        throw new CLParsingException("this token is not a null: <" + content() + SimpleComparison.GREATER_THAN_OPERATION, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        a(sb, i2);
        sb.append(content());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (CLParser.f2295d) {
            return SimpleComparison.LESS_THAN_OPERATION + content() + SimpleComparison.GREATER_THAN_OPERATION;
        }
        return content();
    }

    public boolean validate(char c4, long j4) {
        int i2 = AnonymousClass1.f2308a[this.f2304i.ordinal()];
        if (i2 == 1) {
            char[] cArr = this.f2305j;
            int i4 = this.f2303h;
            r1 = cArr[i4] == c4;
            if (r1 && i4 + 1 == cArr.length) {
                setEnd(j4);
            }
        } else if (i2 == 2) {
            char[] cArr2 = this.f2306k;
            int i5 = this.f2303h;
            r1 = cArr2[i5] == c4;
            if (r1 && i5 + 1 == cArr2.length) {
                setEnd(j4);
            }
        } else if (i2 == 3) {
            char[] cArr3 = this.f2307l;
            int i6 = this.f2303h;
            r1 = cArr3[i6] == c4;
            if (r1 && i6 + 1 == cArr3.length) {
                setEnd(j4);
            }
        } else if (i2 == 4) {
            char[] cArr4 = this.f2305j;
            int i7 = this.f2303h;
            if (cArr4[i7] == c4) {
                this.f2304i = Type.TRUE;
            } else if (this.f2306k[i7] == c4) {
                this.f2304i = Type.FALSE;
            } else if (this.f2307l[i7] == c4) {
                this.f2304i = Type.NULL;
            }
            r1 = true;
        }
        this.f2303h++;
        return r1;
    }
}
