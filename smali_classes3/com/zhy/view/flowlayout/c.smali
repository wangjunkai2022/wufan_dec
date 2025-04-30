.class public final synthetic Lcom/zhy/view/flowlayout/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

.field public final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhy/view/flowlayout/c;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    iput p2, p0, Lcom/zhy/view/flowlayout/c;->b:I

    iput-object p3, p0, Lcom/zhy/view/flowlayout/c;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    iput-object p4, p0, Lcom/zhy/view/flowlayout/c;->d:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/zhy/view/flowlayout/c;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3$a;

    iget v1, p0, Lcom/zhy/view/flowlayout/c;->b:I

    iget-object v2, p0, Lcom/zhy/view/flowlayout/c;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    iget-object v3, p0, Lcom/zhy/view/flowlayout/c;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
