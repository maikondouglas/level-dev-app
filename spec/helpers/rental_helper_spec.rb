require 'rails_helper'

describe RentalHelper do
  describe '#status' do
    let(:rental) { build(:rental, status: status) }

    subject { helper.status(rental.status) }

    context 'should render blue when scheduled' do
      let(:status) { :scheduled }

      it { is_expected.to eq('<span class="bg bg-primary">agendada</span>') }
    end

    context 'should render yellow when ongoing' do
      let(:status) { :ongoing }

      it { is_expected.to eq('<span class="bg bg-warning">em andamento</span>') }
    end

    context 'should render success when finalized' do
      let(:status) { :finalized }

      it { is_expected.to eq('<span class="bg bg-success">finalizada</span>') }
    end
  end
end

