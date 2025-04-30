.class Lcom/join/mgps/activity/message/MessageSettingActivity_$g;
.super Ljava/lang/Object;
.source "MessageSettingActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageSettingActivity_;->K0(Lcom/join/mgps/dto/AccountResultMainBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountResultMainBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/message/MessageSettingActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->c:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->a:Lcom/join/mgps/dto/AccountResultMainBean;

    iput p3, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->c:Lcom/join/mgps/activity/message/MessageSettingActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->a:Lcom/join/mgps/dto/AccountResultMainBean;

    iget v2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity_$g;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->N0(Lcom/join/mgps/activity/message/MessageSettingActivity_;Lcom/join/mgps/dto/AccountResultMainBean;I)V

    return-void
.end method
