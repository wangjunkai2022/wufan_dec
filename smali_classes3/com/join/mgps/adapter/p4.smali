.class public final synthetic Lcom/join/mgps/adapter/p4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/t4;

.field public final synthetic b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/p4;->a:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/p4;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    iput-object p3, p0, Lcom/join/mgps/adapter/p4;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/join/mgps/adapter/p4;->d:Landroid/widget/TextView;

    iput p5, p0, Lcom/join/mgps/adapter/p4;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/join/mgps/adapter/p4;->a:Lcom/join/mgps/adapter/t4;

    iget-object v1, p0, Lcom/join/mgps/adapter/p4;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    iget-object v2, p0, Lcom/join/mgps/adapter/p4;->c:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/join/mgps/adapter/p4;->d:Landroid/widget/TextView;

    iget v4, p0, Lcom/join/mgps/adapter/p4;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/adapter/t4;->k(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V

    return-void
.end method
