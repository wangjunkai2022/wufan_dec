.class public final synthetic Lcom/join/mgps/customview/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dto/MainLabelBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/o;->a:Lcom/join/mgps/dto/MainLabelBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/customview/o;->a:Lcom/join/mgps/dto/MainLabelBean;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->c(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V

    return-void
.end method
