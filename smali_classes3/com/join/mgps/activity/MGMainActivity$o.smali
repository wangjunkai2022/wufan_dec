.class Lcom/join/mgps/activity/MGMainActivity$o;
.super Lcom/join/mgps/ad/m;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Z

.field final synthetic t:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->t:Lcom/join/mgps/activity/MGMainActivity;

    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$o;->s:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/ad/c;->d(Ljava/lang/String;IILjava/util/Map;)V

    .line 2
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->t:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$o;->t:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->t:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ef

    invoke-static {p1, p2, p4}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$o;->s:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/m;->h(Z)V

    return-void
.end method
