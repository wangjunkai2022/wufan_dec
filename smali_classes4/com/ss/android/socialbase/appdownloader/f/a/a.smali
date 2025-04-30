.class Lcom/ss/android/socialbase/appdownloader/f/a/a;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/f/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/f/a/a$a;
    }
.end annotation


# instance fields
.field private b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

.field private c:Z

.field private d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

.field private e:[I

.field private f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    .line 4
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    return-void
.end method

.method private final e(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Current event is not START_TAG."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final g()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    .line 3
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 4
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    .line 6
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->m:I

    .line 7
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    .line 8
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->o:I

    return-void
.end method

.method private final h()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    const v2, 0x80003

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a/b;->a(Lcom/ss/android/socialbase/appdownloader/f/a/d;I)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(Lcom/ss/android/socialbase/appdownloader/f/a/d;)Lcom/ss/android/socialbase/appdownloader/f/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->e()V

    .line 6
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 7
    :cond_0
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    if-eq v0, v1, :cond_f

    .line 8
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    .line 9
    :goto_0
    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    iput-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    .line 11
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->f()V

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 12
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->d()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b()I

    move-result v4

    if-nez v4, :cond_2

    .line 13
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto/16 :goto_3

    :cond_2
    const v4, 0x100102

    if-nez v0, :cond_3

    const v5, 0x100102

    goto :goto_1

    .line 14
    :cond_3
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v5

    :goto_1
    const v6, 0x80180

    const/4 v7, 0x2

    const-string v8, ")."

    if-ne v5, v6, :cond_5

    .line 15
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_4

    .line 16
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_4

    .line 17
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e:[I

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const v6, 0x100100

    if-lt v5, v6, :cond_e

    const v9, 0x100104

    if-gt v5, v9, :cond_e

    if-ne v5, v4, :cond_6

    const/4 v8, -0x1

    if-ne v0, v8, :cond_6

    .line 19
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto/16 :goto_3

    .line 20
    :cond_6
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 21
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v3

    .line 22
    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    if-eq v5, v6, :cond_c

    const v8, 0x100101

    if-ne v5, v8, :cond_7

    goto/16 :goto_4

    .line 23
    :cond_7
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    if-ne v5, v4, :cond_9

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x10

    sub-int/2addr v3, v1

    .line 28
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->m:I

    const v3, 0xffff

    and-int/2addr v0, v3

    .line 29
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v4

    iput v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    ushr-int/lit8 v5, v4, 0x10

    sub-int/2addr v5, v1

    .line 30
    iput v5, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->o:I

    and-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 31
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    .line 32
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    .line 33
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v1, v0

    if-ge v2, v1, :cond_8

    .line 34
    aget v1, v0, v2

    ushr-int/lit8 v1, v1, 0x18

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x5

    goto :goto_2

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->e()V

    .line 36
    iput v7, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto :goto_3

    :cond_9
    const v3, 0x100103

    if-ne v5, v3, :cond_a

    .line 37
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 39
    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    .line 40
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    goto :goto_3

    :cond_a
    if-eq v5, v9, :cond_b

    goto/16 :goto_0

    .line 41
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 43
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    :goto_3
    return-void

    :cond_c
    :goto_4
    if-ne v5, v6, :cond_d

    .line 45
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v2

    .line 46
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v3

    .line 47
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4, v2, v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a(II)V

    goto/16 :goto_0

    .line 48
    :cond_d
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 49
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 50
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c()Z

    goto/16 :goto_0

    .line 51
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid chunk type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    .line 7
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    .line 8
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e:[I

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a()V

    .line 10
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/appdownloader/f/a/h;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h()V

    .line 3
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V

    .line 5
    throw v0

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/h;

    const/4 v1, 0x0

    const-string v2, "Parser is not opened."

    invoke-direct {v0, v2, p0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/h;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/f/a/g;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(I)I
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    return v0
.end method

.method public c(I)I
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 4
    aget p1, v0, p1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x4

    .line 6
    aget p1, v0, p1

    const-string p1, ""

    return-object p1
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
