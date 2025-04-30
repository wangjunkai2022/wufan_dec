.class Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$4;
.super Ljava/lang/Object;
.source "ChangeAccountNickNameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;->showFinishPage(Lcom/join/mgps/dto/AccountBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;

.field final synthetic val$accountBean:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$4;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$4;->val$accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$4;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$4;->val$accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;->access$001(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method
