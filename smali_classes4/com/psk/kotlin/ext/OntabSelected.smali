.class public abstract Lcom/psk/kotlin/ext/OntabSelected;
.super Ljava/lang/Object;
.source "OntabSelected.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/psk/kotlin/ext/OntabSelected;",
        "Lcom/google/android/material/tabs/TabLayout$d;",
        "Lcom/google/android/material/tabs/TabLayout$g;",
        "p0",
        "",
        "onTabUnselected",
        "onTabReselected",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
