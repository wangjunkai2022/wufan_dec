.class public Lcom/join/mgps/Util/e2;
.super Ljava/lang/Object;
.source "TCUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/e2$e;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "TCUploadHelper"

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/Util/e2$e;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/Util/e2$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/e2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/e2;->b:Lcom/join/mgps/Util/e2$e;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/Util/e2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/e2$a;-><init>(Lcom/join/mgps/Util/e2;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/join/mgps/Util/e2;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/e2;)Lcom/join/mgps/Util/e2$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/e2;->b:Lcom/join/mgps/Util/e2$e;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/e2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/e2;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/e2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/Util/e2;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/Util/e2$c;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/e2$c;-><init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->W(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/e2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/cos/COSClientConfig;

    invoke-direct {v1}, Lcom/tencent/cos/COSClientConfig;-><init>()V

    .line 3
    sget-object v2, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    invoke-virtual {v1, v2}, Lcom/tencent/cos/COSConfig;->setEndPoint(Lcom/tencent/cos/common/COSEndPoint;)V

    .line 4
    new-instance v2, Lcom/tencent/cos/COSClient;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p3, v1, v3}, Lcom/tencent/cos/COSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    new-instance p5, Lcom/tencent/cos/model/PutObjectRequest;

    invoke-direct {p5}, Lcom/tencent/cos/model/PutObjectRequest;-><init>()V

    .line 7
    invoke-virtual {p5, p4}, Lcom/tencent/cos/model/COSRequest;->setBucket(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p5, p3}, Lcom/tencent/cos/model/COSRequest;->setCosPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/PutObjectRequest;->setSrcPath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p5, p2}, Lcom/tencent/cos/model/COSRequest;->setSign(Ljava/lang/String;)V

    const-string p1, "0"

    .line 11
    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/PutObjectRequest;->setInsertOnly(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/join/mgps/Util/e2$b;

    invoke-direct {p1, p0, p3}, Lcom/join/mgps/Util/e2$b;-><init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/COSRequest;->setListener(Lcom/tencent/cos/task/listener/ITaskListener;)V

    .line 13
    invoke-virtual {v2, p5}, Lcom/tencent/cos/COSClient;->putObject(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/PutObjectResult;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "uid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "token"

    .line 3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Lcom/join/mgps/Util/e2$d;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/Util/e2$d;-><init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/join/mgps/rpc/g;->w:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/interface/getcossign"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/e2;->e(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method
