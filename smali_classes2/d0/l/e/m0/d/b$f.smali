.class public Ld0/l/e/m0/d/b$f;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/l/e/m0/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->RIGHT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    iput-object v0, p0, Ld0/l/e/m0/d/b$f;->a:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    const/16 v0, 0xfa

    .line 3
    iput v0, p0, Ld0/l/e/m0/d/b$f;->b:I

    return-void
.end method
