.class Lcom/join/mgps/activity/TagAddActivity$h;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->H0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic b:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$h;->b:Lcom/join/mgps/activity/TagAddActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$h;->a:Lcom/join/mgps/dto/GameTagsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$h;->b:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$h;->a:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagAddActivity;->I0(Lcom/join/mgps/dto/GameTagsBean;)V

    return-void
.end method
