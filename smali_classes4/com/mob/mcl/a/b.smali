.class public Lcom/mob/mcl/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "url"

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 16
    :cond_0
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, p0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "headers"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "chunkLength"

    .line 17
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    .line 18
    invoke-virtual {p3}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "body"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    iget p0, p5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string p1, "readTimout"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget p0, p5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const-string p1, "connectionTimeout"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/mob/mcl/a/b;
    .locals 2

    .line 3
    new-instance v0, Lcom/mob/mcl/a/b;

    invoke-direct {v0}, Lcom/mob/mcl/a/b;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "type"

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/mcl/a/b;->a:Ljava/lang/String;

    const-string v1, "url"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    const-string v1, "headers"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/mcl/a/b;->c:Ljava/lang/String;

    const-string v1, "chunkLength"

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mob/mcl/a/b;->e:I

    const-string v1, "body"

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/mcl/a/b;->d:Ljava/lang/String;

    const-string v1, "readTimout"

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mob/mcl/a/b;->f:I

    const-string v1, "connectionTimeout"

    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/mob/mcl/a/b;->g:I

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
