.class Lcom/airsaid/pickerviewlibrary/widget/a$a$a;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/a$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/widget/a$a;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;->a:Lcom/airsaid/pickerviewlibrary/widget/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;->a:Lcom/airsaid/pickerviewlibrary/widget/a$a;

    iget-object v0, v0, Lcom/airsaid/pickerviewlibrary/widget/a$a;->a:Lcom/airsaid/pickerviewlibrary/widget/a;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->c()V

    return-void
.end method
