.class Lcom/join/mgps/activity/GamePaiWeiActivty$c;
.super Lcom/join/android/app/common/http/d$p;
.source "GamePaiWeiActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$c;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty$c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
