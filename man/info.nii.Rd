\name{info.nii}
\alias{info.nii}
\title{Retrieve NIfTI Header Information}
\description{
Retrieve information from the NIfTI header of the specified file. The entire header can be retrieved as a list, or a single or subset of items can be specified as a character vector to get specific information. There are several special cases implemented including getting number of voxels, number of volumes, image spacing, and orientation.
}
\usage{info.nii(nii.file, field="hdr")}
\arguments{
  \item{nii.file}{Full directory listing to NIfTI file.}
  \item{field}{A character vector of field names to be returned.}
}
\details{
Fields can take a number of different values indicating the entire header, a specific item or subset of header values or set of useful values.
\cr Number of voxels in XYZ planes: \cr 'dimensions', 'dims', 'size', 'sz', 'voxels', 'vxls', 'xyz'
\cr Voxel spacing: \cr 'space', 'spacing'
\cr Number of Volumes: \cr 'volumes', 'vols', 'trs'
\cr Orientation fields: \cr 'orientation'
\cr Entire Header as list object: \cr 'hdr'
\cr Subset of specific header items: \cr 'sizeof_hdr', 'data_type', 'db_name', 'extents', 'session_error', 'regular', 'dim_info', 'dim', 'intent_p1', 'intent_p2', 'intent_p3', 'intent_code', 'datatype', 'bitpix', 'slice_start', 'pixdim', 'vox_offset', 'scl_slope', 'scl_inter', 'slice_end', 'slice_code', 'xyzt_units', 'cal_max', 'cal_min', 'slice_duration', 'toffset', 'glmax', 'glmin', 'descrip', 'aux_file', 'qform_code', 'sform_code', 'quatern_b', 'quatern_c', 'quatern_d', 'qoffset_x', 'qoffset_y', 'qoffset_z', 'srow_x', 'srow_y', 'srow_z', 'intent_name', 'magic'
}
\value{A vector or named list containing the requested output}
\author{
Timothy R. Koscik <timothy-koscik@uiowa.edu>
}
\examples{
\dontrun{
# specify directory listing to NII file as a string
nii.file <- "~/file.nii"

# get the number of voxels in the 3-dimensional volume of the specified image
image.size <- info.nii(nii.file = nii.file, field = "dimensions")

# get the size in mm of the volume
image.spacing <- info.nii(nii.file = nii.file, field = "spacing")

# get the number of volumes
image.volumes <- info.nii(nii.file = nii.file, field = "volumes")

# get list containing orientation parameters
image.orientation <- info.nii(nii.file = nii.file, field = "orientation")

# get entire header from NII file
image.hdr <- info.nii(nii.file = nii.file, field = "hdr")

# get a specific element in the header
image.hdr.datatype <- info.nii(nii.file = nii.file, field = "datatype")
}
}
