.class final Lcom/facebook/soloader/l$b$a;
.super Lcom/facebook/soloader/v$e;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/facebook/soloader/l$b;


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/l$b$a;->b:Lcom/facebook/soloader/l$b;

    invoke-direct {p0}, Lcom/facebook/soloader/v$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/soloader/l$b;Lcom/facebook/soloader/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/soloader/l$b$a;-><init>(Lcom/facebook/soloader/l$b;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/soloader/l$b$a;->a:I

    iget-object v1, p0, Lcom/facebook/soloader/l$b$a;->b:Lcom/facebook/soloader/l$b;

    invoke-static {v1}, Lcom/facebook/soloader/l$b;->d(Lcom/facebook/soloader/l$b;)[Lcom/facebook/soloader/l$c;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/facebook/soloader/v$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/l$b$a;->b:Lcom/facebook/soloader/l$b;

    invoke-static {v0}, Lcom/facebook/soloader/l$b;->d(Lcom/facebook/soloader/l$b;)[Lcom/facebook/soloader/l$c;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/l$b$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/l$b$a;->a:I

    aget-object v0, v0, v1

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/soloader/l$c;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/v$d;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/v$d;-><init>(Lcom/facebook/soloader/v$b;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 5
    throw v0
.end method
