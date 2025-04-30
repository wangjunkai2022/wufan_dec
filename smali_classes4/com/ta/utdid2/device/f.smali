.class public Lcom/ta/utdid2/device/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/Random;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/f;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"

    .line 2
    iput-object v0, p0, Lcom/ta/utdid2/device/f;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 2
    sget-object v2, Lcom/ta/utdid2/device/f;->b:Ljava/util/Random;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ta/utdid2/android/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lcom/ta/utdid2/android/utils/b;->f([BI)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ta/utdid2/device/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ta/utdid2/android/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ta/utdid2/android/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
