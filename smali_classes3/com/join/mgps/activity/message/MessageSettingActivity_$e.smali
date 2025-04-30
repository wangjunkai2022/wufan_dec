.class Lcom/join/mgps/activity/message/MessageSettingActivity_$e;
.super Ljava/lang/Object;
.source "MessageSettingActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageSettingActivity_;->E0(Lcom/join/mgps/dto/AccountResultMainBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountResultMainBean;

.field final synthetic b:Lcom/join/mgps/activity/message/MessageSettingActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$e;->b:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$e;->a:Lcom/join/mgps/dto/AccountResultMainBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$e;->b:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$e;->a:Lcom/join/mgps/dto/AccountResultMainBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->L0(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;)V

    return-void
.end method
