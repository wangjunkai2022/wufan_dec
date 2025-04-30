.class Lcom/join/mgps/activity/ModGameIndexActivity$o;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/r0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->f2(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;ILcom/papa91/wrapper/UserPrefs;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    iput p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->b:Lcom/papa91/wrapper/UserPrefs;

    iput p4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->c:I

    iput p5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->a1(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->c1(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    :goto_0
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->b:Lcom/papa91/wrapper/UserPrefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    return-void
.end method
