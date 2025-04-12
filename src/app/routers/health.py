from fastapi import APIRouter


router = APIRouter()

@router.get(
    "/health",
    status_code=200,
    summary="API healh status"
)
async def helthcheck():
    return {"status": "ok"}