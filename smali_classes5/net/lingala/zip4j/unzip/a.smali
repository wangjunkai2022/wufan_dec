.class Lnet/lingala/zip4j/unzip/a;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field final synthetic a:Lnet/lingala/zip4j/unzip/c;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Le3/k;

.field private final synthetic d:Lf3/a;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/c;Ljava/lang/String;Ljava/util/ArrayList;Le3/k;Lf3/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/a;->a:Lnet/lingala/zip4j/unzip/c;

    iput-object p3, p0, Lnet/lingala/zip4j/unzip/a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/unzip/a;->c:Le3/k;

    iput-object p5, p0, Lnet/lingala/zip4j/unzip/a;->d:Lf3/a;

    iput-object p6, p0, Lnet/lingala/zip4j/unzip/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/a;->a:Lnet/lingala/zip4j/unzip/c;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/a;->c:Le3/k;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/a;->d:Lf3/a;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/unzip/c;->a(Lnet/lingala/zip4j/unzip/c;Ljava/util/ArrayList;Le3/k;Lf3/a;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/a;->d:Lf3/a;

    invoke-virtual {v0}, Lf3/a;->c()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
