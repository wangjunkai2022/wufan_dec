.class public Lcom/ss/android/download/api/model/c;
.super Ljava/lang/Object;
.source "DownloadEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Lorg/json/JSONObject;

.field private final i:Lorg/json/JSONObject;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/String;

.field private final n:Z

.field private final o:Ljava/lang/String;

.field private final p:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ss/android/download/api/model/c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->a(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->b(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->c(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->d(Lcom/ss/android/download/api/model/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/c;->d:Z

    .line 6
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->e(Lcom/ss/android/download/api/model/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/c;->e:J

    .line 7
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->f(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->f:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->g(Lcom/ss/android/download/api/model/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/c;->g:J

    .line 9
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->h(Lcom/ss/android/download/api/model/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->h:Lorg/json/JSONObject;

    .line 10
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->i(Lcom/ss/android/download/api/model/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->i:Lorg/json/JSONObject;

    .line 11
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->j(Lcom/ss/android/download/api/model/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->j:Ljava/util/List;

    .line 12
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->k(Lcom/ss/android/download/api/model/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/download/api/model/c;->k:I

    .line 13
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->l(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->l:Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->m(Lcom/ss/android/download/api/model/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/c;->n:Z

    .line 15
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->n(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->o:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->o(Lcom/ss/android/download/api/model/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/c;->p:Lorg/json/JSONObject;

    .line 17
    invoke-static {p1}, Lcom/ss/android/download/api/model/c$a;->p(Lcom/ss/android/download/api/model/c$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/c;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/download/api/model/c;->d:Z

    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/download/api/model/c;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/download/api/model/c;->g:J

    return-wide v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/download/api/model/c;->k:I

    return v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/download/api/model/c;->n:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/c;->p:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ttag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tlabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/download/api/model/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/download/api/model/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tlogExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\textValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/download/api/model/c;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nextJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nparamsJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nclickTrackUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->j:Ljava/util/List;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\teventSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/download/api/model/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\textraObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->l:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisV3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/download/api/model/c;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tV3EventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tV3EventParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/c;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
