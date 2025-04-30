.class Lcom/papa91/paay/MyActivity$3;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Lcom/papa91/paay/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/MyActivity;->startLobbyGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/paay/MyActivity;


# direct methods
.method constructor <init>(Lcom/papa91/paay/MyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/MyActivity$3;->this$0:Lcom/papa91/paay/MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/papa91/paay/PayResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getError()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
