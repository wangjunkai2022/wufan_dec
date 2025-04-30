.class Lcom/join/mgps/activity/SearchHintActivity$i;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->f1(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SearchAutoDataBean;

.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchAutoDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$i;->b:Lcom/join/mgps/activity/SearchHintActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$i;->a:Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$i;->b:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$i;->a:Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$i;->a:Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
