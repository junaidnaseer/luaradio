local ffi = require('ffi')

local block = require('radio.core.block')
local types = require('radio.types')
local filter_utils = require('radio.blocks.signal.filter_utils')

local FIRFilterBlock = require('radio.blocks.signal.firfilter')

local ComplexBandstopFilterBlock = block.factory("ComplexBandstopFilterBlock", FIRFilterBlock)

function ComplexBandstopFilterBlock:instantiate(num_taps, cutoffs, nyquist, window_type)
    FIRFilterBlock.instantiate(self, types.ComplexFloat32.vector(num_taps))

    self.cutoffs = cutoffs
    self.window_type = (window_type == nil) and "hamming" or window_type
    self.nyquist = nyquist
end

function ComplexBandstopFilterBlock:initialize()
    -- Compute Nyquist frequency
    local nyquist = self.nyquist or (self:get_rate()/2)

    -- Generate taps
    local cutoffs = {self.cutoffs[1]/nyquist, self.cutoffs[2]/nyquist}
    local taps = filter_utils.firwin_complex_bandstop(self.taps.length, cutoffs, self.window_type)
    self.taps = types.ComplexFloat32.vector_from_array(taps)

    FIRFilterBlock.initialize(self)
end

return ComplexBandstopFilterBlock
