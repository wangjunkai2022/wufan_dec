.class Lcom/join/mgps/Util/UtilsMy$f;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->G(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/dto/TipBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/TipBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$f;->b:Lcom/join/mgps/dto/TipBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$f;->b:Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$f;->b:Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
