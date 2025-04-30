.class Lnet/lingala/zip4j/zip/a;
.super Ljava/lang/Thread;
.source "ZipEngine.java"


# instance fields
.field final synthetic a:Lnet/lingala/zip4j/zip/b;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Le3/p;

.field private final synthetic d:Lf3/a;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/zip/b;Ljava/lang/String;Ljava/util/ArrayList;Le3/p;Lf3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/zip/a;->a:Lnet/lingala/zip4j/zip/b;

    iput-object p3, p0, Lnet/lingala/zip4j/zip/a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/zip/a;->c:Le3/p;

    iput-object p5, p0, Lnet/lingala/zip4j/zip/a;->d:Lf3/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/zip/a;->a:Lnet/lingala/zip4j/zip/b;

    iget-object v1, p0, Lnet/lingala/zip4j/zip/a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/zip/a;->c:Le3/p;

    iget-object v3, p0, Lnet/lingala/zip4j/zip/a;->d:Lf3/a;

    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/zip/b;->a(Lnet/lingala/zip4j/zip/b;Ljava/util/ArrayList;Le3/p;Lf3/a;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
