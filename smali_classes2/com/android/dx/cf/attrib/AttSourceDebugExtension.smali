.class public final Lcom/android/dx/cf/attrib/AttSourceDebugExtension;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "AttSourceDebugExtension.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "SourceDebugExtension"


# instance fields
.field private final smapString:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstString;)V
    .locals 1

    const-string v0, "SourceDebugExtension"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    const-string v0, "smapString == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/android/dx/rop/cst/CstString;

    return-void
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getUtf8Size()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSmapString()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/android/dx/rop/cst/CstString;

    return-object v0
.end method
