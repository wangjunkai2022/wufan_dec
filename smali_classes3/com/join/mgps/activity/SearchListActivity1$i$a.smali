.class Lcom/join/mgps/activity/SearchListActivity1$i$a;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1$i;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SearchAutoDataBean;

.field final synthetic b:Lcom/join/mgps/activity/SearchListActivity1$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1$i;Lcom/join/mgps/dto/SearchAutoDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$i$a;->b:Lcom/join/mgps/activity/SearchListActivity1$i;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$i$a;->a:Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$i$a;->b:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->a(Lcom/join/mgps/activity/SearchListActivity1$i;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$i$a;->a:Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$i$a;->b:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V

    return-void
.end method
