.class Lcom/join/mgps/activity/GamePaiWeiActivty_$s;
.super Ljava/lang/Object;
.source "GamePaiWeiActivty_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty_;->S(Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PaiWeiUploadFileBean;

.field final synthetic b:Lcom/join/mgps/activity/GamePaiWeiActivty_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;->b:Lcom/join/mgps/activity/GamePaiWeiActivty_;

    iput-object p2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;->a:Lcom/join/mgps/dto/PaiWeiUploadFileBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;->b:Lcom/join/mgps/activity/GamePaiWeiActivty_;

    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;->a:Lcom/join/mgps/dto/PaiWeiUploadFileBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->e0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V

    return-void
.end method
