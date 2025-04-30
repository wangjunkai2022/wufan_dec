.class public final synthetic Lcom/join/mgps/dialog/u1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dialog/w1;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dialog/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/u1;->a:Lcom/join/mgps/dialog/w1;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/dialog/u1;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/dialog/w1;->m(Lcom/join/mgps/dialog/w1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
