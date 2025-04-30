.class public Lcom/join/mgps/Util/t$c;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/Util/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/Util/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/t$c;->d:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[<sectionless!>]"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    new-instance v2, Lcom/join/mgps/Util/t$a;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/join/mgps/Util/t$a;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/Util/t$c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/BufferedReader;)V
    .locals 10

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/Util/t$c;->d:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    .line 12
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "["

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "[<sectionless!>]"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    new-instance v4, Lcom/join/mgps/Util/t$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0}, Lcom/join/mgps/Util/t$a;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/Util/t$c;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\n"

    const/4 v6, 0x0

    if-lt v4, v3, :cond_a

    .line 20
    :try_start_1
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 21
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-le v4, v3, :cond_2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "//"

    .line 23
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "="

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x3d

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    return-void

    .line 26
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v4, v8, :cond_1

    .line 27
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 31
    iget-object v4, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/Util/t$b;

    if-eqz v4, :cond_5

    .line 32
    iput-object v1, v4, Lcom/join/mgps/Util/t$b;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 33
    :cond_5
    new-instance v4, Lcom/join/mgps/Util/t$b;

    invoke-direct {v4, v6, v1}, Lcom/join/mgps/Util/t$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    new-instance v8, Lcom/join/mgps/Util/t$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, v7, p1, v4}, Lcom/join/mgps/Util/t$a;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 36
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_9

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/16 p1, 0x5b

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/16 p2, 0x5d

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_9

    const/4 v2, -0x1

    if-eq p1, v2, :cond_9

    if-ne p2, v2, :cond_8

    goto :goto_1

    .line 40
    :cond_8
    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/join/mgps/Util/t$c;->d:Ljava/lang/String;

    :cond_9
    :goto_1
    return-void

    .line 42
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    new-instance v4, Lcom/join/mgps/Util/t$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v6, p1, v0}, Lcom/join/mgps/Util/t$a;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/t$c;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/t$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/t$c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/t$b;

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/Util/t$b;->b:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/Util/t$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/Util/t$b;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/Util/t$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    new-instance v2, Lcom/join/mgps/Util/t$a;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2, v0}, Lcom/join/mgps/Util/t$a;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/t$b;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/join/mgps/Util/t$c;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p2, v0, Lcom/join/mgps/Util/t$b;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/io/FileWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/t$a;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/t$a;->a(Ljava/io/FileWriter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
