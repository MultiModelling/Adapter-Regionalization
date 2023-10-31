from enum import Enum
from typing import Dict, Optional, Any, ClassVar, Type, List
from marshmallow_dataclass import dataclass
from dataclasses import field

from marshmallow import Schema, fields


class ModelState(str, Enum):
    UNKNOWN = "UNKNOWN"
    PENDING = "PENDING"
    ACCEPTED = "ACCEPTED"
    QUEUED = "QUEUED"
    READY = "READY"
    RUNNING = "RUNNING"
    SUCCEEDED = "SUCCEEDED"
    ERROR = "ERROR"

@dataclass
class RegionalizationConfig:
    endpoint: str
    path: str


@dataclass
class RegionalizationAdapterConfig:
    year: int
    from_scope: str
    to_scope: str
    rules: List[dict]
    reg_config: RegionalizationConfig
    input_file_path: str = None
    output_file_path: str = None
    base_path: Optional[str] = None


@dataclass
class ModelRun:
    state: ModelState
    config: RegionalizationAdapterConfig
    result: dict


@dataclass(order=True)
class ModelRunInfo:
    model_run_id: str
    state: ModelState = field(default=ModelState.UNKNOWN)
    result: Optional[Dict[str, Any]] = None
    reason: Optional[str] = None

    # support for Schema generation in Marshmallow
    Schema: ClassVar[Type[Schema]] = Schema
