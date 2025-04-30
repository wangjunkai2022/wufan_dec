.class public Lcom/tencent/stat/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    iput-object p1, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/tencent/stat/a/c;

    iget-object v1, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    invoke-virtual {v3, p1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Properties;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
