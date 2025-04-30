package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLParser {

    /* renamed from: d  reason: collision with root package name */
    static boolean f2295d;

    /* renamed from: a  reason: collision with root package name */
    private String f2296a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2297b = false;

    /* renamed from: c  reason: collision with root package name */
    private int f2298c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.parser.CLParser$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2299a;

        static {
            int[] iArr = new int[TYPE.values().length];
            f2299a = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2299a[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2299a[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2299a[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2299a[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2299a[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.f2296a = str;
    }

    private CLElement a(CLElement cLElement, int i2, TYPE type, boolean z3, char[] cArr) {
        CLElement allocate;
        if (f2295d) {
            System.out.println("CREATE " + type + " at " + cArr[i2]);
        }
        switch (AnonymousClass1.f2299a[type.ordinal()]) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i2++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i2++;
                break;
            case 3:
                allocate = CLString.allocate(cArr);
                break;
            case 4:
                allocate = CLNumber.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.f2298c);
        if (z3) {
            allocate.setStart(i2);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }

    private CLElement b(int i2, char c4, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c4 == '\t' || c4 == '\n' || c4 == '\r' || c4 == ' ') {
            return cLElement;
        }
        if (c4 == '\"' || c4 == '\'') {
            if (cLElement instanceof CLObject) {
                return a(cLElement, i2, TYPE.KEY, true, cArr);
            }
            return a(cLElement, i2, TYPE.STRING, true, cArr);
        } else if (c4 != '[') {
            if (c4 != ']') {
                if (c4 == '{') {
                    return a(cLElement, i2, TYPE.OBJECT, true, cArr);
                }
                if (c4 != '}') {
                    switch (c4) {
                        case '+':
                        case '-':
                        case '.':
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            return a(cLElement, i2, TYPE.NUMBER, true, cArr);
                        case ',':
                        case ':':
                            return cLElement;
                        case '/':
                            int i4 = i2 + 1;
                            if (i4 >= cArr.length || cArr[i4] != '/') {
                                return cLElement;
                            }
                            this.f2297b = true;
                            return cLElement;
                        default:
                            if ((cLElement instanceof CLContainer) && !(cLElement instanceof CLObject)) {
                                CLElement a4 = a(cLElement, i2, TYPE.TOKEN, true, cArr);
                                CLToken cLToken = (CLToken) a4;
                                if (cLToken.validate(c4, i2)) {
                                    return a4;
                                }
                                throw new CLParsingException("incorrect token <" + c4 + "> at line " + this.f2298c, cLToken);
                            }
                            return a(cLElement, i2, TYPE.KEY, true, cArr);
                    }
                }
            }
            cLElement.setEnd(i2 - 1);
            CLElement container = cLElement.getContainer();
            container.setEnd(i2);
            return container;
        } else {
            return a(cLElement, i2, TYPE.ARRAY, true, cArr);
        }
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLObject parse() throws CLParsingException {
        char[] charArray = this.f2296a.toCharArray();
        int length = charArray.length;
        int i2 = 1;
        this.f2298c = 1;
        boolean z3 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                i4 = -1;
                break;
            }
            char c4 = charArray[i4];
            if (c4 == '{') {
                break;
            }
            if (c4 == '\n') {
                this.f2298c++;
            }
            i4++;
        }
        if (i4 != -1) {
            CLObject allocate = CLObject.allocate(charArray);
            allocate.setLine(this.f2298c);
            allocate.setStart(i4);
            int i5 = i4 + 1;
            CLObject cLObject = allocate;
            while (i5 < length) {
                char c5 = charArray[i5];
                if (c5 == '\n') {
                    this.f2298c += i2;
                }
                if (this.f2297b) {
                    if (c5 == '\n') {
                        this.f2297b = z3;
                    } else {
                        continue;
                        i5++;
                        i2 = 1;
                        z3 = false;
                    }
                }
                if (cLObject == null) {
                    break;
                }
                if (cLObject.isDone()) {
                    cLObject = b(i5, c5, cLObject, charArray);
                } else if (cLObject instanceof CLObject) {
                    if (c5 == '}') {
                        cLObject.setEnd(i5 - 1);
                    } else {
                        cLObject = b(i5, c5, cLObject, charArray);
                    }
                } else if (!(cLObject instanceof CLArray)) {
                    boolean z4 = cLObject instanceof CLString;
                    if (z4) {
                        long j4 = cLObject.f2286b;
                        if (charArray[(int) j4] == c5) {
                            cLObject.setStart(j4 + 1);
                            cLObject.setEnd(i5 - 1);
                        }
                    } else {
                        if (cLObject instanceof CLToken) {
                            CLToken cLToken = (CLToken) cLObject;
                            if (!cLToken.validate(c5, i5)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.f2298c, cLToken);
                            }
                        }
                        if ((cLObject instanceof CLKey) || z4) {
                            long j5 = cLObject.f2286b;
                            char c6 = charArray[(int) j5];
                            if ((c6 == '\'' || c6 == '\"') && c6 == c5) {
                                cLObject.setStart(j5 + 1);
                                cLObject.setEnd(i5 - 1);
                            }
                        }
                        if (!cLObject.isDone() && (c5 == '}' || c5 == ']' || c5 == ',' || c5 == ' ' || c5 == '\t' || c5 == '\r' || c5 == '\n' || c5 == ':')) {
                            long j6 = i5 - 1;
                            cLObject.setEnd(j6);
                            if (c5 == '}' || c5 == ']') {
                                cLObject = cLObject.getContainer();
                                cLObject.setEnd(j6);
                                if (cLObject instanceof CLKey) {
                                    cLObject = cLObject.getContainer();
                                    cLObject.setEnd(j6);
                                }
                            }
                        }
                    }
                } else if (c5 == ']') {
                    cLObject.setEnd(i5 - 1);
                } else {
                    cLObject = b(i5, c5, cLObject, charArray);
                }
                if (cLObject.isDone() && (!(cLObject instanceof CLKey) || ((CLKey) cLObject).f2282h.size() > 0)) {
                    cLObject = cLObject.getContainer();
                }
                i5++;
                i2 = 1;
                z3 = false;
            }
            while (cLObject != null && !cLObject.isDone()) {
                if (cLObject instanceof CLString) {
                    cLObject.setStart(((int) cLObject.f2286b) + 1);
                }
                cLObject.setEnd(length - 1);
                cLObject = cLObject.getContainer();
            }
            if (f2295d) {
                System.out.println("Root: " + allocate.toJSON());
            }
            return allocate;
        }
        throw new CLParsingException("invalid json content", null);
    }
}
