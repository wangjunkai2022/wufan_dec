.class public Lcom/ss/android/socialbase/downloader/constants/e;
.super Ljava/lang/Object;
.source "DownloadConstants.java"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:Ljava/lang/String; = ""

.field public static volatile c:Ljava/lang/String; = ""

.field public static d:J = 0x7d000L

.field public static e:J = 0x32L

.field public static f:J = 0x500000L

.field public static g:J = 0x1e00000L

.field public static h:J = 0xa00000L

.field public static final i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->i:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sput-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    return-void
.end method
