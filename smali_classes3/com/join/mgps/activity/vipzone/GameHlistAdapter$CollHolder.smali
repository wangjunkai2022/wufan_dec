.class Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;
.super Ljava/lang/Object;
.source "GameHlistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/GameHlistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollHolder"
.end annotation


# instance fields
.field cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field gameName:Landroid/widget/TextView;

.field main:Landroid/view/View;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
