.class public final Lcom/xinzhu/overmind/hiddenapibypass/Helper$Executable;
.super Lcom/xinzhu/overmind/hiddenapibypass/Helper$AccessibleObject;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Executable"
.end annotation


# instance fields
.field private accessFlags:I

.field private artMethod:J

.field private declaringClass:Lcom/xinzhu/overmind/hiddenapibypass/Helper$Class;

.field private declaringClassOfOverriddenMethod:Lcom/xinzhu/overmind/hiddenapibypass/Helper$Class;

.field private parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/hiddenapibypass/Helper$AccessibleObject;-><init>()V

    return-void
.end method
