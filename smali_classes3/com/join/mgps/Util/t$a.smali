.class Lcom/join/mgps/Util/t$a;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/join/mgps/Util/t$b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/Util/t$a;->a:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/Util/t$a;->c:Lcom/join/mgps/Util/t$b;

    .line 5
    iput p1, p0, Lcom/join/mgps/Util/t$a;->a:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/Util/t$a;->c:Lcom/join/mgps/Util/t$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/FileWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/t$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/Util/t$a;->c:Lcom/join/mgps/Util/t$b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/Util/t$a;->c:Lcom/join/mgps/Util/t$b;

    iget-object v0, v0, Lcom/join/mgps/Util/t$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/t$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
