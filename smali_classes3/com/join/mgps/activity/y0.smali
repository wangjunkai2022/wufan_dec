.class public final synthetic Lcom/join/mgps/activity/y0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/join/mgps/activity/y0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/mgps/activity/y0;

    invoke-direct {v0}, Lcom/join/mgps/activity/y0;-><init>()V

    sput-object v0, Lcom/join/mgps/activity/y0;->a:Lcom/join/mgps/activity/y0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p1

    return p1
.end method
