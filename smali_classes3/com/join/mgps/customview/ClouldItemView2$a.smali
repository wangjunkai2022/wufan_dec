.class Lcom/join/mgps/customview/ClouldItemView2$a;
.super Ljava/lang/Object;
.source "ClouldItemView2.java"

# interfaces
.implements Lq/rorbin/badgeview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/customview/ClouldItemView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$a;->f:Lcom/join/mgps/customview/ClouldItemView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILq/rorbin/badgeview/a;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-interface {p2, p1}, Lq/rorbin/badgeview/a;->hide(Z)V

    :cond_0
    return-void
.end method
