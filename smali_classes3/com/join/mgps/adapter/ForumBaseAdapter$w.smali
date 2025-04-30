.class Lcom/join/mgps/adapter/ForumBaseAdapter$w;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->D0(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$w;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$w;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;I)V

    return-void
.end method
