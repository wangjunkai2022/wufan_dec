.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;
.super Ljava/lang/Object;
.source "ModGameCloudViewModle.kt"

# interfaces
.implements Lcom/join/mgps/dialog/r0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->startGameADCheck(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1",
        "Lcom/join/mgps/dialog/r0$d;",
        "",
        "onAdClose",
        "onAdShow",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $adc:I

.field final synthetic $func:Lkotlin/jvm/functions/Function0;

.field final synthetic $u:I

.field final synthetic $userPrefs:Lcom/papa91/wrapper/UserPrefs;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$func:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$userPrefs:Lcom/papa91/wrapper/UserPrefs;

    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$u:I

    iput p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$adc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$func:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$userPrefs:Lcom/papa91/wrapper/UserPrefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$u:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$adc:I

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    return-void
.end method
