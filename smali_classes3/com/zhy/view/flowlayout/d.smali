.class public final synthetic Lcom/zhy/view/flowlayout/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

.field public final synthetic b:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field public final synthetic c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

.field public final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhy/view/flowlayout/d;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    iput-object p2, p0, Lcom/zhy/view/flowlayout/d;->b:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object p3, p0, Lcom/zhy/view/flowlayout/d;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    iput-object p4, p0, Lcom/zhy/view/flowlayout/d;->d:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhy/view/flowlayout/d;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    iget-object v1, p0, Lcom/zhy/view/flowlayout/d;->b:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iget-object v2, p0, Lcom/zhy/view/flowlayout/d;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    iget-object v3, p0, Lcom/zhy/view/flowlayout/d;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
