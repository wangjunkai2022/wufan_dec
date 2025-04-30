package cn.aigestudio.downloader.bizs;
/* compiled from: DLCons.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    static boolean f8306a = true;

    /* compiled from: DLCons.java */
    /* renamed from: cn.aigestudio.downloader.bizs.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0014a {

        /* renamed from: a  reason: collision with root package name */
        static final int f8307a = 10000;

        /* renamed from: b  reason: collision with root package name */
        static final int f8308b = 30000;

        /* renamed from: c  reason: collision with root package name */
        static final int f8309c = 5;

        /* renamed from: d  reason: collision with root package name */
        static final long f8310d = 31457280;

        C0014a() {
        }
    }

    /* compiled from: DLCons.java */
    /* loaded from: classes2.dex */
    static final class b {
        static final int A = 408;
        static final int B = 409;
        static final int C = 410;
        static final int D = 411;
        static final int E = 412;
        static final int F = 413;
        static final int G = 414;
        static final int H = 415;
        static final int I = 416;
        static final int J = 417;
        static final int K = 422;
        static final int L = 423;
        static final int M = 424;
        static final int N = 500;
        static final int O = 501;
        static final int P = 502;
        static final int Q = 503;
        static final int R = 504;
        static final int S = 505;
        static final int T = 507;

        /* renamed from: a  reason: collision with root package name */
        static final int f8311a = 100;

        /* renamed from: b  reason: collision with root package name */
        static final int f8312b = 101;

        /* renamed from: c  reason: collision with root package name */
        static final int f8313c = 102;

        /* renamed from: d  reason: collision with root package name */
        static final int f8314d = 200;

        /* renamed from: e  reason: collision with root package name */
        static final int f8315e = 201;

        /* renamed from: f  reason: collision with root package name */
        static final int f8316f = 202;

        /* renamed from: g  reason: collision with root package name */
        static final int f8317g = 203;

        /* renamed from: h  reason: collision with root package name */
        static final int f8318h = 204;

        /* renamed from: i  reason: collision with root package name */
        static final int f8319i = 205;

        /* renamed from: j  reason: collision with root package name */
        static final int f8320j = 206;

        /* renamed from: k  reason: collision with root package name */
        static final int f8321k = 207;

        /* renamed from: l  reason: collision with root package name */
        static final int f8322l = 300;

        /* renamed from: m  reason: collision with root package name */
        static final int f8323m = 301;

        /* renamed from: n  reason: collision with root package name */
        static final int f8324n = 302;

        /* renamed from: o  reason: collision with root package name */
        static final int f8325o = 303;

        /* renamed from: p  reason: collision with root package name */
        static final int f8326p = 304;

        /* renamed from: q  reason: collision with root package name */
        static final int f8327q = 305;

        /* renamed from: r  reason: collision with root package name */
        static final int f8328r = 307;

        /* renamed from: s  reason: collision with root package name */
        static final int f8329s = 400;

        /* renamed from: t  reason: collision with root package name */
        static final int f8330t = 401;

        /* renamed from: u  reason: collision with root package name */
        static final int f8331u = 402;

        /* renamed from: v  reason: collision with root package name */
        static final int f8332v = 403;

        /* renamed from: w  reason: collision with root package name */
        static final int f8333w = 404;

        /* renamed from: x  reason: collision with root package name */
        static final int f8334x = 405;

        /* renamed from: y  reason: collision with root package name */
        static final int f8335y = 406;

        /* renamed from: z  reason: collision with root package name */
        static final int f8336z = 407;

        b() {
        }
    }

    /* compiled from: DLCons.java */
    /* loaded from: classes2.dex */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final String f8337a = "task_info";

        /* renamed from: b  reason: collision with root package name */
        static final String f8338b = "base_url";

        /* renamed from: c  reason: collision with root package name */
        static final String f8339c = "real_url";

        /* renamed from: d  reason: collision with root package name */
        static final String f8340d = "file_path";

        /* renamed from: e  reason: collision with root package name */
        static final String f8341e = "currentBytes";

        /* renamed from: f  reason: collision with root package name */
        static final String f8342f = "totalBytes";

        /* renamed from: g  reason: collision with root package name */
        static final String f8343g = "file_name";

        /* renamed from: h  reason: collision with root package name */
        static final String f8344h = "mime_type";

        /* renamed from: i  reason: collision with root package name */
        static final String f8345i = "e_tag";

        /* renamed from: j  reason: collision with root package name */
        static final String f8346j = "disposition";

        /* renamed from: k  reason: collision with root package name */
        static final String f8347k = "location";

        /* renamed from: l  reason: collision with root package name */
        static final String f8348l = "thread_info";

        /* renamed from: m  reason: collision with root package name */
        static final String f8349m = "base_url";

        /* renamed from: n  reason: collision with root package name */
        static final String f8350n = "start";

        /* renamed from: o  reason: collision with root package name */
        static final String f8351o = "end";

        /* renamed from: p  reason: collision with root package name */
        static final String f8352p = "id";

        /* renamed from: q  reason: collision with root package name */
        static final String f8353q = "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, file_name CHAR, mime_type CHAR, e_tag CHAR, disposition CHAR, location CHAR, currentBytes INTEGER, totalBytes INTEGER)";

        /* renamed from: r  reason: collision with root package name */
        static final String f8354r = "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, start BIGINT, end BIGINT, id CHAR)";

        /* renamed from: s  reason: collision with root package name */
        static final String f8355s = "DROP TABLE IF EXISTS task_info";

        /* renamed from: t  reason: collision with root package name */
        static final String f8356t = "DROP TABLE IF EXISTS thread_info";

        c() {
        }
    }

    private a() {
    }
}
